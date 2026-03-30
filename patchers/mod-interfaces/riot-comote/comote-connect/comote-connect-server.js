var __create = Object.create;
var __defProp = Object.defineProperty;
var __getOwnPropDesc = Object.getOwnPropertyDescriptor;
var __getOwnPropNames = Object.getOwnPropertyNames;
var __getProtoOf = Object.getPrototypeOf;
var __hasOwnProp = Object.prototype.hasOwnProperty;
var __commonJS = (cb, mod) => function __require() {
  return mod || (0, cb[__getOwnPropNames(cb)[0]])((mod = { exports: {} }).exports, mod), mod.exports;
};
var __copyProps = (to, from, except, desc) => {
  if (from && typeof from === "object" || typeof from === "function") {
    for (let key of __getOwnPropNames(from))
      if (!__hasOwnProp.call(to, key) && key !== except)
        __defProp(to, key, { get: () => from[key], enumerable: !(desc = __getOwnPropDesc(from, key)) || desc.enumerable });
  }
  return to;
};
var __toESM = (mod, isNodeMode, target) => (target = mod != null ? __create(__getProtoOf(mod)) : {}, __copyProps(
  // If the importer is in node compatibility mode or this is not an ESM
  // file that has been converted to a CommonJS file using a Babel-
  // compatible transform (i.e. "__esModule" has not been set), then set
  // "default" to the CommonJS "module.exports" for node compatibility.
  isNodeMode || !mod || !mod.__esModule ? __defProp(target, "default", { value: mod, enumerable: true }) : target,
  mod
));

// node_modules/ws/lib/constants.js
var require_constants = __commonJS({
  "node_modules/ws/lib/constants.js"(exports2, module2) {
    "use strict";
    var BINARY_TYPES = ["nodebuffer", "arraybuffer", "fragments"];
    var hasBlob = typeof Blob !== "undefined";
    if (hasBlob) BINARY_TYPES.push("blob");
    module2.exports = {
      BINARY_TYPES,
      EMPTY_BUFFER: Buffer.alloc(0),
      GUID: "258EAFA5-E914-47DA-95CA-C5AB0DC85B11",
      hasBlob,
      kForOnEventAttribute: Symbol("kIsForOnEventAttribute"),
      kListener: Symbol("kListener"),
      kStatusCode: Symbol("status-code"),
      kWebSocket: Symbol("websocket"),
      NOOP: () => {
      }
    };
  }
});

// ../../../../node_modules/node-gyp-build/node-gyp-build.js
var require_node_gyp_build = __commonJS({
  "../../../../node_modules/node-gyp-build/node-gyp-build.js"(exports2, module2) {
    var fs2 = require("fs");
    var path2 = require("path");
    var os = require("os");
    var runtimeRequire = typeof __webpack_require__ === "function" ? __non_webpack_require__ : require;
    var vars = process.config && process.config.variables || {};
    var prebuildsOnly = !!process.env.PREBUILDS_ONLY;
    var abi = process.versions.modules;
    var runtime = isElectron() ? "electron" : isNwjs() ? "node-webkit" : "node";
    var arch = process.env.npm_config_arch || os.arch();
    var platform = process.env.npm_config_platform || os.platform();
    var libc = process.env.LIBC || (isAlpine(platform) ? "musl" : "glibc");
    var armv = process.env.ARM_VERSION || (arch === "arm64" ? "8" : vars.arm_version) || "";
    var uv = (process.versions.uv || "").split(".")[0];
    module2.exports = load;
    function load(dir) {
      return runtimeRequire(load.resolve(dir));
    }
    load.resolve = load.path = function(dir) {
      dir = path2.resolve(dir || ".");
      try {
        var name = runtimeRequire(path2.join(dir, "package.json")).name.toUpperCase().replace(/-/g, "_");
        if (process.env[name + "_PREBUILD"]) dir = process.env[name + "_PREBUILD"];
      } catch (err) {
      }
      if (!prebuildsOnly) {
        var release = getFirst(path2.join(dir, "build/Release"), matchBuild);
        if (release) return release;
        var debug = getFirst(path2.join(dir, "build/Debug"), matchBuild);
        if (debug) return debug;
      }
      var prebuild = resolve(dir);
      if (prebuild) return prebuild;
      var nearby = resolve(path2.dirname(process.execPath));
      if (nearby) return nearby;
      var target = [
        "platform=" + platform,
        "arch=" + arch,
        "runtime=" + runtime,
        "abi=" + abi,
        "uv=" + uv,
        armv ? "armv=" + armv : "",
        "libc=" + libc,
        "node=" + process.versions.node,
        process.versions.electron ? "electron=" + process.versions.electron : "",
        typeof __webpack_require__ === "function" ? "webpack=true" : ""
        // eslint-disable-line
      ].filter(Boolean).join(" ");
      throw new Error("No native build was found for " + target + "\n    loaded from: " + dir + "\n");
      function resolve(dir2) {
        var tuples = readdirSync(path2.join(dir2, "prebuilds")).map(parseTuple);
        var tuple = tuples.filter(matchTuple(platform, arch)).sort(compareTuples)[0];
        if (!tuple) return;
        var prebuilds = path2.join(dir2, "prebuilds", tuple.name);
        var parsed = readdirSync(prebuilds).map(parseTags);
        var candidates = parsed.filter(matchTags(runtime, abi));
        var winner = candidates.sort(compareTags(runtime))[0];
        if (winner) return path2.join(prebuilds, winner.file);
      }
    };
    function readdirSync(dir) {
      try {
        return fs2.readdirSync(dir);
      } catch (err) {
        return [];
      }
    }
    function getFirst(dir, filter) {
      var files = readdirSync(dir).filter(filter);
      return files[0] && path2.join(dir, files[0]);
    }
    function matchBuild(name) {
      return /\.node$/.test(name);
    }
    function parseTuple(name) {
      var arr = name.split("-");
      if (arr.length !== 2) return;
      var platform2 = arr[0];
      var architectures = arr[1].split("+");
      if (!platform2) return;
      if (!architectures.length) return;
      if (!architectures.every(Boolean)) return;
      return { name, platform: platform2, architectures };
    }
    function matchTuple(platform2, arch2) {
      return function(tuple) {
        if (tuple == null) return false;
        if (tuple.platform !== platform2) return false;
        return tuple.architectures.includes(arch2);
      };
    }
    function compareTuples(a, b) {
      return a.architectures.length - b.architectures.length;
    }
    function parseTags(file) {
      var arr = file.split(".");
      var extension = arr.pop();
      var tags = { file, specificity: 0 };
      if (extension !== "node") return;
      for (var i = 0; i < arr.length; i++) {
        var tag = arr[i];
        if (tag === "node" || tag === "electron" || tag === "node-webkit") {
          tags.runtime = tag;
        } else if (tag === "napi") {
          tags.napi = true;
        } else if (tag.slice(0, 3) === "abi") {
          tags.abi = tag.slice(3);
        } else if (tag.slice(0, 2) === "uv") {
          tags.uv = tag.slice(2);
        } else if (tag.slice(0, 4) === "armv") {
          tags.armv = tag.slice(4);
        } else if (tag === "glibc" || tag === "musl") {
          tags.libc = tag;
        } else {
          continue;
        }
        tags.specificity++;
      }
      return tags;
    }
    function matchTags(runtime2, abi2) {
      return function(tags) {
        if (tags == null) return false;
        if (tags.runtime && tags.runtime !== runtime2 && !runtimeAgnostic(tags)) return false;
        if (tags.abi && tags.abi !== abi2 && !tags.napi) return false;
        if (tags.uv && tags.uv !== uv) return false;
        if (tags.armv && tags.armv !== armv) return false;
        if (tags.libc && tags.libc !== libc) return false;
        return true;
      };
    }
    function runtimeAgnostic(tags) {
      return tags.runtime === "node" && tags.napi;
    }
    function compareTags(runtime2) {
      return function(a, b) {
        if (a.runtime !== b.runtime) {
          return a.runtime === runtime2 ? -1 : 1;
        } else if (a.abi !== b.abi) {
          return a.abi ? -1 : 1;
        } else if (a.specificity !== b.specificity) {
          return a.specificity > b.specificity ? -1 : 1;
        } else {
          return 0;
        }
      };
    }
    function isNwjs() {
      return !!(process.versions && process.versions.nw);
    }
    function isElectron() {
      if (process.versions && process.versions.electron) return true;
      if (process.env.ELECTRON_RUN_AS_NODE) return true;
      return typeof window !== "undefined" && window.process && window.process.type === "renderer";
    }
    function isAlpine(platform2) {
      return platform2 === "linux" && fs2.existsSync("/etc/alpine-release");
    }
    load.parseTags = parseTags;
    load.matchTags = matchTags;
    load.compareTags = compareTags;
    load.parseTuple = parseTuple;
    load.matchTuple = matchTuple;
    load.compareTuples = compareTuples;
  }
});

// ../../../../node_modules/node-gyp-build/index.js
var require_node_gyp_build2 = __commonJS({
  "../../../../node_modules/node-gyp-build/index.js"(exports2, module2) {
    var runtimeRequire = typeof __webpack_require__ === "function" ? __non_webpack_require__ : require;
    if (typeof runtimeRequire.addon === "function") {
      module2.exports = runtimeRequire.addon.bind(runtimeRequire);
    } else {
      module2.exports = require_node_gyp_build();
    }
  }
});

// ../../../../node_modules/bufferutil/fallback.js
var require_fallback = __commonJS({
  "../../../../node_modules/bufferutil/fallback.js"(exports2, module2) {
    "use strict";
    var mask = (source, mask2, output, offset, length) => {
      for (var i = 0; i < length; i++) {
        output[offset + i] = source[i] ^ mask2[i & 3];
      }
    };
    var unmask = (buffer, mask2) => {
      const length = buffer.length;
      for (var i = 0; i < length; i++) {
        buffer[i] ^= mask2[i & 3];
      }
    };
    module2.exports = { mask, unmask };
  }
});

// ../../../../node_modules/bufferutil/index.js
var require_bufferutil = __commonJS({
  "../../../../node_modules/bufferutil/index.js"(exports2, module2) {
    "use strict";
    try {
      module2.exports = require_node_gyp_build2()(__dirname);
    } catch (e) {
      module2.exports = require_fallback();
    }
  }
});

// node_modules/ws/lib/buffer-util.js
var require_buffer_util = __commonJS({
  "node_modules/ws/lib/buffer-util.js"(exports2, module2) {
    "use strict";
    var { EMPTY_BUFFER } = require_constants();
    var FastBuffer = Buffer[Symbol.species];
    function concat(list, totalLength) {
      if (list.length === 0) return EMPTY_BUFFER;
      if (list.length === 1) return list[0];
      const target = Buffer.allocUnsafe(totalLength);
      let offset = 0;
      for (let i = 0; i < list.length; i++) {
        const buf = list[i];
        target.set(buf, offset);
        offset += buf.length;
      }
      if (offset < totalLength) {
        return new FastBuffer(target.buffer, target.byteOffset, offset);
      }
      return target;
    }
    function _mask(source, mask, output, offset, length) {
      for (let i = 0; i < length; i++) {
        output[offset + i] = source[i] ^ mask[i & 3];
      }
    }
    function _unmask(buffer, mask) {
      for (let i = 0; i < buffer.length; i++) {
        buffer[i] ^= mask[i & 3];
      }
    }
    function toArrayBuffer(buf) {
      if (buf.length === buf.buffer.byteLength) {
        return buf.buffer;
      }
      return buf.buffer.slice(buf.byteOffset, buf.byteOffset + buf.length);
    }
    function toBuffer(data) {
      toBuffer.readOnly = true;
      if (Buffer.isBuffer(data)) return data;
      let buf;
      if (data instanceof ArrayBuffer) {
        buf = new FastBuffer(data);
      } else if (ArrayBuffer.isView(data)) {
        buf = new FastBuffer(data.buffer, data.byteOffset, data.byteLength);
      } else {
        buf = Buffer.from(data);
        toBuffer.readOnly = false;
      }
      return buf;
    }
    module2.exports = {
      concat,
      mask: _mask,
      toArrayBuffer,
      toBuffer,
      unmask: _unmask
    };
    if (!process.env.WS_NO_BUFFER_UTIL) {
      try {
        const bufferUtil = require_bufferutil();
        module2.exports.mask = function(source, mask, output, offset, length) {
          if (length < 48) _mask(source, mask, output, offset, length);
          else bufferUtil.mask(source, mask, output, offset, length);
        };
        module2.exports.unmask = function(buffer, mask) {
          if (buffer.length < 32) _unmask(buffer, mask);
          else bufferUtil.unmask(buffer, mask);
        };
      } catch (e) {
      }
    }
  }
});

// node_modules/ws/lib/limiter.js
var require_limiter = __commonJS({
  "node_modules/ws/lib/limiter.js"(exports2, module2) {
    "use strict";
    var kDone = Symbol("kDone");
    var kRun = Symbol("kRun");
    var Limiter = class {
      /**
       * Creates a new `Limiter`.
       *
       * @param {Number} [concurrency=Infinity] The maximum number of jobs allowed
       *     to run concurrently
       */
      constructor(concurrency) {
        this[kDone] = () => {
          this.pending--;
          this[kRun]();
        };
        this.concurrency = concurrency || Infinity;
        this.jobs = [];
        this.pending = 0;
      }
      /**
       * Adds a job to the queue.
       *
       * @param {Function} job The job to run
       * @public
       */
      add(job) {
        this.jobs.push(job);
        this[kRun]();
      }
      /**
       * Removes a job from the queue and runs it if possible.
       *
       * @private
       */
      [kRun]() {
        if (this.pending === this.concurrency) return;
        if (this.jobs.length) {
          const job = this.jobs.shift();
          this.pending++;
          job(this[kDone]);
        }
      }
    };
    module2.exports = Limiter;
  }
});

// node_modules/ws/lib/permessage-deflate.js
var require_permessage_deflate = __commonJS({
  "node_modules/ws/lib/permessage-deflate.js"(exports2, module2) {
    "use strict";
    var zlib = require("zlib");
    var bufferUtil = require_buffer_util();
    var Limiter = require_limiter();
    var { kStatusCode } = require_constants();
    var FastBuffer = Buffer[Symbol.species];
    var TRAILER = Buffer.from([0, 0, 255, 255]);
    var kPerMessageDeflate = Symbol("permessage-deflate");
    var kTotalLength = Symbol("total-length");
    var kCallback = Symbol("callback");
    var kBuffers = Symbol("buffers");
    var kError = Symbol("error");
    var zlibLimiter;
    var PerMessageDeflate = class {
      /**
       * Creates a PerMessageDeflate instance.
       *
       * @param {Object} [options] Configuration options
       * @param {(Boolean|Number)} [options.clientMaxWindowBits] Advertise support
       *     for, or request, a custom client window size
       * @param {Boolean} [options.clientNoContextTakeover=false] Advertise/
       *     acknowledge disabling of client context takeover
       * @param {Number} [options.concurrencyLimit=10] The number of concurrent
       *     calls to zlib
       * @param {(Boolean|Number)} [options.serverMaxWindowBits] Request/confirm the
       *     use of a custom server window size
       * @param {Boolean} [options.serverNoContextTakeover=false] Request/accept
       *     disabling of server context takeover
       * @param {Number} [options.threshold=1024] Size (in bytes) below which
       *     messages should not be compressed if context takeover is disabled
       * @param {Object} [options.zlibDeflateOptions] Options to pass to zlib on
       *     deflate
       * @param {Object} [options.zlibInflateOptions] Options to pass to zlib on
       *     inflate
       * @param {Boolean} [isServer=false] Create the instance in either server or
       *     client mode
       * @param {Number} [maxPayload=0] The maximum allowed message length
       */
      constructor(options, isServer, maxPayload) {
        this._maxPayload = maxPayload | 0;
        this._options = options || {};
        this._threshold = this._options.threshold !== void 0 ? this._options.threshold : 1024;
        this._isServer = !!isServer;
        this._deflate = null;
        this._inflate = null;
        this.params = null;
        if (!zlibLimiter) {
          const concurrency = this._options.concurrencyLimit !== void 0 ? this._options.concurrencyLimit : 10;
          zlibLimiter = new Limiter(concurrency);
        }
      }
      /**
       * @type {String}
       */
      static get extensionName() {
        return "permessage-deflate";
      }
      /**
       * Create an extension negotiation offer.
       *
       * @return {Object} Extension parameters
       * @public
       */
      offer() {
        const params = {};
        if (this._options.serverNoContextTakeover) {
          params.server_no_context_takeover = true;
        }
        if (this._options.clientNoContextTakeover) {
          params.client_no_context_takeover = true;
        }
        if (this._options.serverMaxWindowBits) {
          params.server_max_window_bits = this._options.serverMaxWindowBits;
        }
        if (this._options.clientMaxWindowBits) {
          params.client_max_window_bits = this._options.clientMaxWindowBits;
        } else if (this._options.clientMaxWindowBits == null) {
          params.client_max_window_bits = true;
        }
        return params;
      }
      /**
       * Accept an extension negotiation offer/response.
       *
       * @param {Array} configurations The extension negotiation offers/reponse
       * @return {Object} Accepted configuration
       * @public
       */
      accept(configurations) {
        configurations = this.normalizeParams(configurations);
        this.params = this._isServer ? this.acceptAsServer(configurations) : this.acceptAsClient(configurations);
        return this.params;
      }
      /**
       * Releases all resources used by the extension.
       *
       * @public
       */
      cleanup() {
        if (this._inflate) {
          this._inflate.close();
          this._inflate = null;
        }
        if (this._deflate) {
          const callback = this._deflate[kCallback];
          this._deflate.close();
          this._deflate = null;
          if (callback) {
            callback(
              new Error(
                "The deflate stream was closed while data was being processed"
              )
            );
          }
        }
      }
      /**
       *  Accept an extension negotiation offer.
       *
       * @param {Array} offers The extension negotiation offers
       * @return {Object} Accepted configuration
       * @private
       */
      acceptAsServer(offers) {
        const opts = this._options;
        const accepted = offers.find((params) => {
          if (opts.serverNoContextTakeover === false && params.server_no_context_takeover || params.server_max_window_bits && (opts.serverMaxWindowBits === false || typeof opts.serverMaxWindowBits === "number" && opts.serverMaxWindowBits > params.server_max_window_bits) || typeof opts.clientMaxWindowBits === "number" && !params.client_max_window_bits) {
            return false;
          }
          return true;
        });
        if (!accepted) {
          throw new Error("None of the extension offers can be accepted");
        }
        if (opts.serverNoContextTakeover) {
          accepted.server_no_context_takeover = true;
        }
        if (opts.clientNoContextTakeover) {
          accepted.client_no_context_takeover = true;
        }
        if (typeof opts.serverMaxWindowBits === "number") {
          accepted.server_max_window_bits = opts.serverMaxWindowBits;
        }
        if (typeof opts.clientMaxWindowBits === "number") {
          accepted.client_max_window_bits = opts.clientMaxWindowBits;
        } else if (accepted.client_max_window_bits === true || opts.clientMaxWindowBits === false) {
          delete accepted.client_max_window_bits;
        }
        return accepted;
      }
      /**
       * Accept the extension negotiation response.
       *
       * @param {Array} response The extension negotiation response
       * @return {Object} Accepted configuration
       * @private
       */
      acceptAsClient(response) {
        const params = response[0];
        if (this._options.clientNoContextTakeover === false && params.client_no_context_takeover) {
          throw new Error('Unexpected parameter "client_no_context_takeover"');
        }
        if (!params.client_max_window_bits) {
          if (typeof this._options.clientMaxWindowBits === "number") {
            params.client_max_window_bits = this._options.clientMaxWindowBits;
          }
        } else if (this._options.clientMaxWindowBits === false || typeof this._options.clientMaxWindowBits === "number" && params.client_max_window_bits > this._options.clientMaxWindowBits) {
          throw new Error(
            'Unexpected or invalid parameter "client_max_window_bits"'
          );
        }
        return params;
      }
      /**
       * Normalize parameters.
       *
       * @param {Array} configurations The extension negotiation offers/reponse
       * @return {Array} The offers/response with normalized parameters
       * @private
       */
      normalizeParams(configurations) {
        configurations.forEach((params) => {
          Object.keys(params).forEach((key) => {
            let value = params[key];
            if (value.length > 1) {
              throw new Error(`Parameter "${key}" must have only a single value`);
            }
            value = value[0];
            if (key === "client_max_window_bits") {
              if (value !== true) {
                const num = +value;
                if (!Number.isInteger(num) || num < 8 || num > 15) {
                  throw new TypeError(
                    `Invalid value for parameter "${key}": ${value}`
                  );
                }
                value = num;
              } else if (!this._isServer) {
                throw new TypeError(
                  `Invalid value for parameter "${key}": ${value}`
                );
              }
            } else if (key === "server_max_window_bits") {
              const num = +value;
              if (!Number.isInteger(num) || num < 8 || num > 15) {
                throw new TypeError(
                  `Invalid value for parameter "${key}": ${value}`
                );
              }
              value = num;
            } else if (key === "client_no_context_takeover" || key === "server_no_context_takeover") {
              if (value !== true) {
                throw new TypeError(
                  `Invalid value for parameter "${key}": ${value}`
                );
              }
            } else {
              throw new Error(`Unknown parameter "${key}"`);
            }
            params[key] = value;
          });
        });
        return configurations;
      }
      /**
       * Decompress data. Concurrency limited.
       *
       * @param {Buffer} data Compressed data
       * @param {Boolean} fin Specifies whether or not this is the last fragment
       * @param {Function} callback Callback
       * @public
       */
      decompress(data, fin, callback) {
        zlibLimiter.add((done) => {
          this._decompress(data, fin, (err, result2) => {
            done();
            callback(err, result2);
          });
        });
      }
      /**
       * Compress data. Concurrency limited.
       *
       * @param {(Buffer|String)} data Data to compress
       * @param {Boolean} fin Specifies whether or not this is the last fragment
       * @param {Function} callback Callback
       * @public
       */
      compress(data, fin, callback) {
        zlibLimiter.add((done) => {
          this._compress(data, fin, (err, result2) => {
            done();
            callback(err, result2);
          });
        });
      }
      /**
       * Decompress data.
       *
       * @param {Buffer} data Compressed data
       * @param {Boolean} fin Specifies whether or not this is the last fragment
       * @param {Function} callback Callback
       * @private
       */
      _decompress(data, fin, callback) {
        const endpoint = this._isServer ? "client" : "server";
        if (!this._inflate) {
          const key = `${endpoint}_max_window_bits`;
          const windowBits = typeof this.params[key] !== "number" ? zlib.Z_DEFAULT_WINDOWBITS : this.params[key];
          this._inflate = zlib.createInflateRaw({
            ...this._options.zlibInflateOptions,
            windowBits
          });
          this._inflate[kPerMessageDeflate] = this;
          this._inflate[kTotalLength] = 0;
          this._inflate[kBuffers] = [];
          this._inflate.on("error", inflateOnError);
          this._inflate.on("data", inflateOnData);
        }
        this._inflate[kCallback] = callback;
        this._inflate.write(data);
        if (fin) this._inflate.write(TRAILER);
        this._inflate.flush(() => {
          const err = this._inflate[kError];
          if (err) {
            this._inflate.close();
            this._inflate = null;
            callback(err);
            return;
          }
          const data2 = bufferUtil.concat(
            this._inflate[kBuffers],
            this._inflate[kTotalLength]
          );
          if (this._inflate._readableState.endEmitted) {
            this._inflate.close();
            this._inflate = null;
          } else {
            this._inflate[kTotalLength] = 0;
            this._inflate[kBuffers] = [];
            if (fin && this.params[`${endpoint}_no_context_takeover`]) {
              this._inflate.reset();
            }
          }
          callback(null, data2);
        });
      }
      /**
       * Compress data.
       *
       * @param {(Buffer|String)} data Data to compress
       * @param {Boolean} fin Specifies whether or not this is the last fragment
       * @param {Function} callback Callback
       * @private
       */
      _compress(data, fin, callback) {
        const endpoint = this._isServer ? "server" : "client";
        if (!this._deflate) {
          const key = `${endpoint}_max_window_bits`;
          const windowBits = typeof this.params[key] !== "number" ? zlib.Z_DEFAULT_WINDOWBITS : this.params[key];
          this._deflate = zlib.createDeflateRaw({
            ...this._options.zlibDeflateOptions,
            windowBits
          });
          this._deflate[kTotalLength] = 0;
          this._deflate[kBuffers] = [];
          this._deflate.on("data", deflateOnData);
        }
        this._deflate[kCallback] = callback;
        this._deflate.write(data);
        this._deflate.flush(zlib.Z_SYNC_FLUSH, () => {
          if (!this._deflate) {
            return;
          }
          let data2 = bufferUtil.concat(
            this._deflate[kBuffers],
            this._deflate[kTotalLength]
          );
          if (fin) {
            data2 = new FastBuffer(data2.buffer, data2.byteOffset, data2.length - 4);
          }
          this._deflate[kCallback] = null;
          this._deflate[kTotalLength] = 0;
          this._deflate[kBuffers] = [];
          if (fin && this.params[`${endpoint}_no_context_takeover`]) {
            this._deflate.reset();
          }
          callback(null, data2);
        });
      }
    };
    module2.exports = PerMessageDeflate;
    function deflateOnData(chunk) {
      this[kBuffers].push(chunk);
      this[kTotalLength] += chunk.length;
    }
    function inflateOnData(chunk) {
      this[kTotalLength] += chunk.length;
      if (this[kPerMessageDeflate]._maxPayload < 1 || this[kTotalLength] <= this[kPerMessageDeflate]._maxPayload) {
        this[kBuffers].push(chunk);
        return;
      }
      this[kError] = new RangeError("Max payload size exceeded");
      this[kError].code = "WS_ERR_UNSUPPORTED_MESSAGE_LENGTH";
      this[kError][kStatusCode] = 1009;
      this.removeListener("data", inflateOnData);
      this.reset();
    }
    function inflateOnError(err) {
      this[kPerMessageDeflate]._inflate = null;
      if (this[kError]) {
        this[kCallback](this[kError]);
        return;
      }
      err[kStatusCode] = 1007;
      this[kCallback](err);
    }
  }
});

// node_modules/node-gyp-build/node-gyp-build.js
var require_node_gyp_build3 = __commonJS({
  "node_modules/node-gyp-build/node-gyp-build.js"(exports2, module2) {
    var fs2 = require("fs");
    var path2 = require("path");
    var os = require("os");
    var runtimeRequire = typeof __webpack_require__ === "function" ? __non_webpack_require__ : require;
    var vars = process.config && process.config.variables || {};
    var prebuildsOnly = !!process.env.PREBUILDS_ONLY;
    var abi = process.versions.modules;
    var runtime = isElectron() ? "electron" : isNwjs() ? "node-webkit" : "node";
    var arch = process.env.npm_config_arch || os.arch();
    var platform = process.env.npm_config_platform || os.platform();
    var libc = process.env.LIBC || (isAlpine(platform) ? "musl" : "glibc");
    var armv = process.env.ARM_VERSION || (arch === "arm64" ? "8" : vars.arm_version) || "";
    var uv = (process.versions.uv || "").split(".")[0];
    module2.exports = load;
    function load(dir) {
      return runtimeRequire(load.resolve(dir));
    }
    load.resolve = load.path = function(dir) {
      dir = path2.resolve(dir || ".");
      try {
        var name = runtimeRequire(path2.join(dir, "package.json")).name.toUpperCase().replace(/-/g, "_");
        if (process.env[name + "_PREBUILD"]) dir = process.env[name + "_PREBUILD"];
      } catch (err) {
      }
      if (!prebuildsOnly) {
        var release = getFirst(path2.join(dir, "build/Release"), matchBuild);
        if (release) return release;
        var debug = getFirst(path2.join(dir, "build/Debug"), matchBuild);
        if (debug) return debug;
      }
      var prebuild = resolve(dir);
      if (prebuild) return prebuild;
      var nearby = resolve(path2.dirname(process.execPath));
      if (nearby) return nearby;
      var target = [
        "platform=" + platform,
        "arch=" + arch,
        "runtime=" + runtime,
        "abi=" + abi,
        "uv=" + uv,
        armv ? "armv=" + armv : "",
        "libc=" + libc,
        "node=" + process.versions.node,
        process.versions.electron ? "electron=" + process.versions.electron : "",
        typeof __webpack_require__ === "function" ? "webpack=true" : ""
        // eslint-disable-line
      ].filter(Boolean).join(" ");
      throw new Error("No native build was found for " + target + "\n    loaded from: " + dir + "\n");
      function resolve(dir2) {
        var tuples = readdirSync(path2.join(dir2, "prebuilds")).map(parseTuple);
        var tuple = tuples.filter(matchTuple(platform, arch)).sort(compareTuples)[0];
        if (!tuple) return;
        var prebuilds = path2.join(dir2, "prebuilds", tuple.name);
        var parsed = readdirSync(prebuilds).map(parseTags);
        var candidates = parsed.filter(matchTags(runtime, abi));
        var winner = candidates.sort(compareTags(runtime))[0];
        if (winner) return path2.join(prebuilds, winner.file);
      }
    };
    function readdirSync(dir) {
      try {
        return fs2.readdirSync(dir);
      } catch (err) {
        return [];
      }
    }
    function getFirst(dir, filter) {
      var files = readdirSync(dir).filter(filter);
      return files[0] && path2.join(dir, files[0]);
    }
    function matchBuild(name) {
      return /\.node$/.test(name);
    }
    function parseTuple(name) {
      var arr = name.split("-");
      if (arr.length !== 2) return;
      var platform2 = arr[0];
      var architectures = arr[1].split("+");
      if (!platform2) return;
      if (!architectures.length) return;
      if (!architectures.every(Boolean)) return;
      return { name, platform: platform2, architectures };
    }
    function matchTuple(platform2, arch2) {
      return function(tuple) {
        if (tuple == null) return false;
        if (tuple.platform !== platform2) return false;
        return tuple.architectures.includes(arch2);
      };
    }
    function compareTuples(a, b) {
      return a.architectures.length - b.architectures.length;
    }
    function parseTags(file) {
      var arr = file.split(".");
      var extension = arr.pop();
      var tags = { file, specificity: 0 };
      if (extension !== "node") return;
      for (var i = 0; i < arr.length; i++) {
        var tag = arr[i];
        if (tag === "node" || tag === "electron" || tag === "node-webkit") {
          tags.runtime = tag;
        } else if (tag === "napi") {
          tags.napi = true;
        } else if (tag.slice(0, 3) === "abi") {
          tags.abi = tag.slice(3);
        } else if (tag.slice(0, 2) === "uv") {
          tags.uv = tag.slice(2);
        } else if (tag.slice(0, 4) === "armv") {
          tags.armv = tag.slice(4);
        } else if (tag === "glibc" || tag === "musl") {
          tags.libc = tag;
        } else {
          continue;
        }
        tags.specificity++;
      }
      return tags;
    }
    function matchTags(runtime2, abi2) {
      return function(tags) {
        if (tags == null) return false;
        if (tags.runtime && tags.runtime !== runtime2 && !runtimeAgnostic(tags)) return false;
        if (tags.abi && tags.abi !== abi2 && !tags.napi) return false;
        if (tags.uv && tags.uv !== uv) return false;
        if (tags.armv && tags.armv !== armv) return false;
        if (tags.libc && tags.libc !== libc) return false;
        return true;
      };
    }
    function runtimeAgnostic(tags) {
      return tags.runtime === "node" && tags.napi;
    }
    function compareTags(runtime2) {
      return function(a, b) {
        if (a.runtime !== b.runtime) {
          return a.runtime === runtime2 ? -1 : 1;
        } else if (a.abi !== b.abi) {
          return a.abi ? -1 : 1;
        } else if (a.specificity !== b.specificity) {
          return a.specificity > b.specificity ? -1 : 1;
        } else {
          return 0;
        }
      };
    }
    function isNwjs() {
      return !!(process.versions && process.versions.nw);
    }
    function isElectron() {
      if (process.versions && process.versions.electron) return true;
      if (process.env.ELECTRON_RUN_AS_NODE) return true;
      return typeof window !== "undefined" && window.process && window.process.type === "renderer";
    }
    function isAlpine(platform2) {
      return platform2 === "linux" && fs2.existsSync("/etc/alpine-release");
    }
    load.parseTags = parseTags;
    load.matchTags = matchTags;
    load.compareTags = compareTags;
    load.parseTuple = parseTuple;
    load.matchTuple = matchTuple;
    load.compareTuples = compareTuples;
  }
});

// node_modules/node-gyp-build/index.js
var require_node_gyp_build4 = __commonJS({
  "node_modules/node-gyp-build/index.js"(exports2, module2) {
    var runtimeRequire = typeof __webpack_require__ === "function" ? __non_webpack_require__ : require;
    if (typeof runtimeRequire.addon === "function") {
      module2.exports = runtimeRequire.addon.bind(runtimeRequire);
    } else {
      module2.exports = require_node_gyp_build3();
    }
  }
});

// node_modules/utf-8-validate/fallback.js
var require_fallback2 = __commonJS({
  "node_modules/utf-8-validate/fallback.js"(exports2, module2) {
    "use strict";
    function isValidUTF8(buf) {
      const len = buf.length;
      let i = 0;
      while (i < len) {
        if ((buf[i] & 128) === 0) {
          i++;
        } else if ((buf[i] & 224) === 192) {
          if (i + 1 === len || (buf[i + 1] & 192) !== 128 || (buf[i] & 254) === 192) {
            return false;
          }
          i += 2;
        } else if ((buf[i] & 240) === 224) {
          if (i + 2 >= len || (buf[i + 1] & 192) !== 128 || (buf[i + 2] & 192) !== 128 || buf[i] === 224 && (buf[i + 1] & 224) === 128 || // overlong
          buf[i] === 237 && (buf[i + 1] & 224) === 160) {
            return false;
          }
          i += 3;
        } else if ((buf[i] & 248) === 240) {
          if (i + 3 >= len || (buf[i + 1] & 192) !== 128 || (buf[i + 2] & 192) !== 128 || (buf[i + 3] & 192) !== 128 || buf[i] === 240 && (buf[i + 1] & 240) === 128 || // overlong
          buf[i] === 244 && buf[i + 1] > 143 || buf[i] > 244) {
            return false;
          }
          i += 4;
        } else {
          return false;
        }
      }
      return true;
    }
    module2.exports = isValidUTF8;
  }
});

// node_modules/utf-8-validate/index.js
var require_utf_8_validate = __commonJS({
  "node_modules/utf-8-validate/index.js"(exports2, module2) {
    "use strict";
    try {
      module2.exports = require_node_gyp_build4()(__dirname);
    } catch (e) {
      module2.exports = require_fallback2();
    }
  }
});

// node_modules/ws/lib/validation.js
var require_validation = __commonJS({
  "node_modules/ws/lib/validation.js"(exports2, module2) {
    "use strict";
    var { isUtf8 } = require("buffer");
    var { hasBlob } = require_constants();
    var tokenChars = [
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      // 0 - 15
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      // 16 - 31
      0,
      1,
      0,
      1,
      1,
      1,
      1,
      1,
      0,
      0,
      1,
      1,
      0,
      1,
      1,
      0,
      // 32 - 47
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      0,
      0,
      0,
      0,
      0,
      0,
      // 48 - 63
      0,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      // 64 - 79
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      0,
      0,
      0,
      1,
      1,
      // 80 - 95
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      // 96 - 111
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      1,
      0,
      1,
      0,
      1,
      0
      // 112 - 127
    ];
    function isValidStatusCode(code) {
      return code >= 1e3 && code <= 1014 && code !== 1004 && code !== 1005 && code !== 1006 || code >= 3e3 && code <= 4999;
    }
    function _isValidUTF8(buf) {
      const len = buf.length;
      let i = 0;
      while (i < len) {
        if ((buf[i] & 128) === 0) {
          i++;
        } else if ((buf[i] & 224) === 192) {
          if (i + 1 === len || (buf[i + 1] & 192) !== 128 || (buf[i] & 254) === 192) {
            return false;
          }
          i += 2;
        } else if ((buf[i] & 240) === 224) {
          if (i + 2 >= len || (buf[i + 1] & 192) !== 128 || (buf[i + 2] & 192) !== 128 || buf[i] === 224 && (buf[i + 1] & 224) === 128 || // Overlong
          buf[i] === 237 && (buf[i + 1] & 224) === 160) {
            return false;
          }
          i += 3;
        } else if ((buf[i] & 248) === 240) {
          if (i + 3 >= len || (buf[i + 1] & 192) !== 128 || (buf[i + 2] & 192) !== 128 || (buf[i + 3] & 192) !== 128 || buf[i] === 240 && (buf[i + 1] & 240) === 128 || // Overlong
          buf[i] === 244 && buf[i + 1] > 143 || buf[i] > 244) {
            return false;
          }
          i += 4;
        } else {
          return false;
        }
      }
      return true;
    }
    function isBlob(value) {
      return hasBlob && typeof value === "object" && typeof value.arrayBuffer === "function" && typeof value.type === "string" && typeof value.stream === "function" && (value[Symbol.toStringTag] === "Blob" || value[Symbol.toStringTag] === "File");
    }
    module2.exports = {
      isBlob,
      isValidStatusCode,
      isValidUTF8: _isValidUTF8,
      tokenChars
    };
    if (isUtf8) {
      module2.exports.isValidUTF8 = function(buf) {
        return buf.length < 24 ? _isValidUTF8(buf) : isUtf8(buf);
      };
    } else if (!process.env.WS_NO_UTF_8_VALIDATE) {
      try {
        const isValidUTF8 = require_utf_8_validate();
        module2.exports.isValidUTF8 = function(buf) {
          return buf.length < 32 ? _isValidUTF8(buf) : isValidUTF8(buf);
        };
      } catch (e) {
      }
    }
  }
});

// node_modules/ws/lib/receiver.js
var require_receiver = __commonJS({
  "node_modules/ws/lib/receiver.js"(exports2, module2) {
    "use strict";
    var { Writable } = require("stream");
    var PerMessageDeflate = require_permessage_deflate();
    var {
      BINARY_TYPES,
      EMPTY_BUFFER,
      kStatusCode,
      kWebSocket
    } = require_constants();
    var { concat, toArrayBuffer, unmask } = require_buffer_util();
    var { isValidStatusCode, isValidUTF8 } = require_validation();
    var FastBuffer = Buffer[Symbol.species];
    var GET_INFO = 0;
    var GET_PAYLOAD_LENGTH_16 = 1;
    var GET_PAYLOAD_LENGTH_64 = 2;
    var GET_MASK = 3;
    var GET_DATA = 4;
    var INFLATING = 5;
    var DEFER_EVENT = 6;
    var Receiver2 = class extends Writable {
      /**
       * Creates a Receiver instance.
       *
       * @param {Object} [options] Options object
       * @param {Boolean} [options.allowSynchronousEvents=true] Specifies whether
       *     any of the `'message'`, `'ping'`, and `'pong'` events can be emitted
       *     multiple times in the same tick
       * @param {String} [options.binaryType=nodebuffer] The type for binary data
       * @param {Object} [options.extensions] An object containing the negotiated
       *     extensions
       * @param {Boolean} [options.isServer=false] Specifies whether to operate in
       *     client or server mode
       * @param {Number} [options.maxPayload=0] The maximum allowed message length
       * @param {Boolean} [options.skipUTF8Validation=false] Specifies whether or
       *     not to skip UTF-8 validation for text and close messages
       */
      constructor(options = {}) {
        super();
        this._allowSynchronousEvents = options.allowSynchronousEvents !== void 0 ? options.allowSynchronousEvents : true;
        this._binaryType = options.binaryType || BINARY_TYPES[0];
        this._extensions = options.extensions || {};
        this._isServer = !!options.isServer;
        this._maxPayload = options.maxPayload | 0;
        this._skipUTF8Validation = !!options.skipUTF8Validation;
        this[kWebSocket] = void 0;
        this._bufferedBytes = 0;
        this._buffers = [];
        this._compressed = false;
        this._payloadLength = 0;
        this._mask = void 0;
        this._fragmented = 0;
        this._masked = false;
        this._fin = false;
        this._opcode = 0;
        this._totalPayloadLength = 0;
        this._messageLength = 0;
        this._fragments = [];
        this._errored = false;
        this._loop = false;
        this._state = GET_INFO;
      }
      /**
       * Implements `Writable.prototype._write()`.
       *
       * @param {Buffer} chunk The chunk of data to write
       * @param {String} encoding The character encoding of `chunk`
       * @param {Function} cb Callback
       * @private
       */
      _write(chunk, encoding, cb) {
        if (this._opcode === 8 && this._state == GET_INFO) return cb();
        this._bufferedBytes += chunk.length;
        this._buffers.push(chunk);
        this.startLoop(cb);
      }
      /**
       * Consumes `n` bytes from the buffered data.
       *
       * @param {Number} n The number of bytes to consume
       * @return {Buffer} The consumed bytes
       * @private
       */
      consume(n) {
        this._bufferedBytes -= n;
        if (n === this._buffers[0].length) return this._buffers.shift();
        if (n < this._buffers[0].length) {
          const buf = this._buffers[0];
          this._buffers[0] = new FastBuffer(
            buf.buffer,
            buf.byteOffset + n,
            buf.length - n
          );
          return new FastBuffer(buf.buffer, buf.byteOffset, n);
        }
        const dst = Buffer.allocUnsafe(n);
        do {
          const buf = this._buffers[0];
          const offset = dst.length - n;
          if (n >= buf.length) {
            dst.set(this._buffers.shift(), offset);
          } else {
            dst.set(new Uint8Array(buf.buffer, buf.byteOffset, n), offset);
            this._buffers[0] = new FastBuffer(
              buf.buffer,
              buf.byteOffset + n,
              buf.length - n
            );
          }
          n -= buf.length;
        } while (n > 0);
        return dst;
      }
      /**
       * Starts the parsing loop.
       *
       * @param {Function} cb Callback
       * @private
       */
      startLoop(cb) {
        this._loop = true;
        do {
          switch (this._state) {
            case GET_INFO:
              this.getInfo(cb);
              break;
            case GET_PAYLOAD_LENGTH_16:
              this.getPayloadLength16(cb);
              break;
            case GET_PAYLOAD_LENGTH_64:
              this.getPayloadLength64(cb);
              break;
            case GET_MASK:
              this.getMask();
              break;
            case GET_DATA:
              this.getData(cb);
              break;
            case INFLATING:
            case DEFER_EVENT:
              this._loop = false;
              return;
          }
        } while (this._loop);
        if (!this._errored) cb();
      }
      /**
       * Reads the first two bytes of a frame.
       *
       * @param {Function} cb Callback
       * @private
       */
      getInfo(cb) {
        if (this._bufferedBytes < 2) {
          this._loop = false;
          return;
        }
        const buf = this.consume(2);
        if ((buf[0] & 48) !== 0) {
          const error = this.createError(
            RangeError,
            "RSV2 and RSV3 must be clear",
            true,
            1002,
            "WS_ERR_UNEXPECTED_RSV_2_3"
          );
          cb(error);
          return;
        }
        const compressed = (buf[0] & 64) === 64;
        if (compressed && !this._extensions[PerMessageDeflate.extensionName]) {
          const error = this.createError(
            RangeError,
            "RSV1 must be clear",
            true,
            1002,
            "WS_ERR_UNEXPECTED_RSV_1"
          );
          cb(error);
          return;
        }
        this._fin = (buf[0] & 128) === 128;
        this._opcode = buf[0] & 15;
        this._payloadLength = buf[1] & 127;
        if (this._opcode === 0) {
          if (compressed) {
            const error = this.createError(
              RangeError,
              "RSV1 must be clear",
              true,
              1002,
              "WS_ERR_UNEXPECTED_RSV_1"
            );
            cb(error);
            return;
          }
          if (!this._fragmented) {
            const error = this.createError(
              RangeError,
              "invalid opcode 0",
              true,
              1002,
              "WS_ERR_INVALID_OPCODE"
            );
            cb(error);
            return;
          }
          this._opcode = this._fragmented;
        } else if (this._opcode === 1 || this._opcode === 2) {
          if (this._fragmented) {
            const error = this.createError(
              RangeError,
              `invalid opcode ${this._opcode}`,
              true,
              1002,
              "WS_ERR_INVALID_OPCODE"
            );
            cb(error);
            return;
          }
          this._compressed = compressed;
        } else if (this._opcode > 7 && this._opcode < 11) {
          if (!this._fin) {
            const error = this.createError(
              RangeError,
              "FIN must be set",
              true,
              1002,
              "WS_ERR_EXPECTED_FIN"
            );
            cb(error);
            return;
          }
          if (compressed) {
            const error = this.createError(
              RangeError,
              "RSV1 must be clear",
              true,
              1002,
              "WS_ERR_UNEXPECTED_RSV_1"
            );
            cb(error);
            return;
          }
          if (this._payloadLength > 125 || this._opcode === 8 && this._payloadLength === 1) {
            const error = this.createError(
              RangeError,
              `invalid payload length ${this._payloadLength}`,
              true,
              1002,
              "WS_ERR_INVALID_CONTROL_PAYLOAD_LENGTH"
            );
            cb(error);
            return;
          }
        } else {
          const error = this.createError(
            RangeError,
            `invalid opcode ${this._opcode}`,
            true,
            1002,
            "WS_ERR_INVALID_OPCODE"
          );
          cb(error);
          return;
        }
        if (!this._fin && !this._fragmented) this._fragmented = this._opcode;
        this._masked = (buf[1] & 128) === 128;
        if (this._isServer) {
          if (!this._masked) {
            const error = this.createError(
              RangeError,
              "MASK must be set",
              true,
              1002,
              "WS_ERR_EXPECTED_MASK"
            );
            cb(error);
            return;
          }
        } else if (this._masked) {
          const error = this.createError(
            RangeError,
            "MASK must be clear",
            true,
            1002,
            "WS_ERR_UNEXPECTED_MASK"
          );
          cb(error);
          return;
        }
        if (this._payloadLength === 126) this._state = GET_PAYLOAD_LENGTH_16;
        else if (this._payloadLength === 127) this._state = GET_PAYLOAD_LENGTH_64;
        else this.haveLength(cb);
      }
      /**
       * Gets extended payload length (7+16).
       *
       * @param {Function} cb Callback
       * @private
       */
      getPayloadLength16(cb) {
        if (this._bufferedBytes < 2) {
          this._loop = false;
          return;
        }
        this._payloadLength = this.consume(2).readUInt16BE(0);
        this.haveLength(cb);
      }
      /**
       * Gets extended payload length (7+64).
       *
       * @param {Function} cb Callback
       * @private
       */
      getPayloadLength64(cb) {
        if (this._bufferedBytes < 8) {
          this._loop = false;
          return;
        }
        const buf = this.consume(8);
        const num = buf.readUInt32BE(0);
        if (num > Math.pow(2, 53 - 32) - 1) {
          const error = this.createError(
            RangeError,
            "Unsupported WebSocket frame: payload length > 2^53 - 1",
            false,
            1009,
            "WS_ERR_UNSUPPORTED_DATA_PAYLOAD_LENGTH"
          );
          cb(error);
          return;
        }
        this._payloadLength = num * Math.pow(2, 32) + buf.readUInt32BE(4);
        this.haveLength(cb);
      }
      /**
       * Payload length has been read.
       *
       * @param {Function} cb Callback
       * @private
       */
      haveLength(cb) {
        if (this._payloadLength && this._opcode < 8) {
          this._totalPayloadLength += this._payloadLength;
          if (this._totalPayloadLength > this._maxPayload && this._maxPayload > 0) {
            const error = this.createError(
              RangeError,
              "Max payload size exceeded",
              false,
              1009,
              "WS_ERR_UNSUPPORTED_MESSAGE_LENGTH"
            );
            cb(error);
            return;
          }
        }
        if (this._masked) this._state = GET_MASK;
        else this._state = GET_DATA;
      }
      /**
       * Reads mask bytes.
       *
       * @private
       */
      getMask() {
        if (this._bufferedBytes < 4) {
          this._loop = false;
          return;
        }
        this._mask = this.consume(4);
        this._state = GET_DATA;
      }
      /**
       * Reads data bytes.
       *
       * @param {Function} cb Callback
       * @private
       */
      getData(cb) {
        let data = EMPTY_BUFFER;
        if (this._payloadLength) {
          if (this._bufferedBytes < this._payloadLength) {
            this._loop = false;
            return;
          }
          data = this.consume(this._payloadLength);
          if (this._masked && (this._mask[0] | this._mask[1] | this._mask[2] | this._mask[3]) !== 0) {
            unmask(data, this._mask);
          }
        }
        if (this._opcode > 7) {
          this.controlMessage(data, cb);
          return;
        }
        if (this._compressed) {
          this._state = INFLATING;
          this.decompress(data, cb);
          return;
        }
        if (data.length) {
          this._messageLength = this._totalPayloadLength;
          this._fragments.push(data);
        }
        this.dataMessage(cb);
      }
      /**
       * Decompresses data.
       *
       * @param {Buffer} data Compressed data
       * @param {Function} cb Callback
       * @private
       */
      decompress(data, cb) {
        const perMessageDeflate = this._extensions[PerMessageDeflate.extensionName];
        perMessageDeflate.decompress(data, this._fin, (err, buf) => {
          if (err) return cb(err);
          if (buf.length) {
            this._messageLength += buf.length;
            if (this._messageLength > this._maxPayload && this._maxPayload > 0) {
              const error = this.createError(
                RangeError,
                "Max payload size exceeded",
                false,
                1009,
                "WS_ERR_UNSUPPORTED_MESSAGE_LENGTH"
              );
              cb(error);
              return;
            }
            this._fragments.push(buf);
          }
          this.dataMessage(cb);
          if (this._state === GET_INFO) this.startLoop(cb);
        });
      }
      /**
       * Handles a data message.
       *
       * @param {Function} cb Callback
       * @private
       */
      dataMessage(cb) {
        if (!this._fin) {
          this._state = GET_INFO;
          return;
        }
        const messageLength = this._messageLength;
        const fragments = this._fragments;
        this._totalPayloadLength = 0;
        this._messageLength = 0;
        this._fragmented = 0;
        this._fragments = [];
        if (this._opcode === 2) {
          let data;
          if (this._binaryType === "nodebuffer") {
            data = concat(fragments, messageLength);
          } else if (this._binaryType === "arraybuffer") {
            data = toArrayBuffer(concat(fragments, messageLength));
          } else if (this._binaryType === "blob") {
            data = new Blob(fragments);
          } else {
            data = fragments;
          }
          if (this._allowSynchronousEvents) {
            this.emit("message", data, true);
            this._state = GET_INFO;
          } else {
            this._state = DEFER_EVENT;
            setImmediate(() => {
              this.emit("message", data, true);
              this._state = GET_INFO;
              this.startLoop(cb);
            });
          }
        } else {
          const buf = concat(fragments, messageLength);
          if (!this._skipUTF8Validation && !isValidUTF8(buf)) {
            const error = this.createError(
              Error,
              "invalid UTF-8 sequence",
              true,
              1007,
              "WS_ERR_INVALID_UTF8"
            );
            cb(error);
            return;
          }
          if (this._state === INFLATING || this._allowSynchronousEvents) {
            this.emit("message", buf, false);
            this._state = GET_INFO;
          } else {
            this._state = DEFER_EVENT;
            setImmediate(() => {
              this.emit("message", buf, false);
              this._state = GET_INFO;
              this.startLoop(cb);
            });
          }
        }
      }
      /**
       * Handles a control message.
       *
       * @param {Buffer} data Data to handle
       * @return {(Error|RangeError|undefined)} A possible error
       * @private
       */
      controlMessage(data, cb) {
        if (this._opcode === 8) {
          if (data.length === 0) {
            this._loop = false;
            this.emit("conclude", 1005, EMPTY_BUFFER);
            this.end();
          } else {
            const code = data.readUInt16BE(0);
            if (!isValidStatusCode(code)) {
              const error = this.createError(
                RangeError,
                `invalid status code ${code}`,
                true,
                1002,
                "WS_ERR_INVALID_CLOSE_CODE"
              );
              cb(error);
              return;
            }
            const buf = new FastBuffer(
              data.buffer,
              data.byteOffset + 2,
              data.length - 2
            );
            if (!this._skipUTF8Validation && !isValidUTF8(buf)) {
              const error = this.createError(
                Error,
                "invalid UTF-8 sequence",
                true,
                1007,
                "WS_ERR_INVALID_UTF8"
              );
              cb(error);
              return;
            }
            this._loop = false;
            this.emit("conclude", code, buf);
            this.end();
          }
          this._state = GET_INFO;
          return;
        }
        if (this._allowSynchronousEvents) {
          this.emit(this._opcode === 9 ? "ping" : "pong", data);
          this._state = GET_INFO;
        } else {
          this._state = DEFER_EVENT;
          setImmediate(() => {
            this.emit(this._opcode === 9 ? "ping" : "pong", data);
            this._state = GET_INFO;
            this.startLoop(cb);
          });
        }
      }
      /**
       * Builds an error object.
       *
       * @param {function(new:Error|RangeError)} ErrorCtor The error constructor
       * @param {String} message The error message
       * @param {Boolean} prefix Specifies whether or not to add a default prefix to
       *     `message`
       * @param {Number} statusCode The status code
       * @param {String} errorCode The exposed error code
       * @return {(Error|RangeError)} The error
       * @private
       */
      createError(ErrorCtor, message, prefix, statusCode, errorCode) {
        this._loop = false;
        this._errored = true;
        const err = new ErrorCtor(
          prefix ? `Invalid WebSocket frame: ${message}` : message
        );
        Error.captureStackTrace(err, this.createError);
        err.code = errorCode;
        err[kStatusCode] = statusCode;
        return err;
      }
    };
    module2.exports = Receiver2;
  }
});

// node_modules/ws/lib/sender.js
var require_sender = __commonJS({
  "node_modules/ws/lib/sender.js"(exports2, module2) {
    "use strict";
    var { Duplex } = require("stream");
    var { randomFillSync } = require("crypto");
    var PerMessageDeflate = require_permessage_deflate();
    var { EMPTY_BUFFER, kWebSocket, NOOP } = require_constants();
    var { isBlob, isValidStatusCode } = require_validation();
    var { mask: applyMask, toBuffer } = require_buffer_util();
    var kByteLength = Symbol("kByteLength");
    var maskBuffer = Buffer.alloc(4);
    var RANDOM_POOL_SIZE = 8 * 1024;
    var randomPool;
    var randomPoolPointer = RANDOM_POOL_SIZE;
    var DEFAULT = 0;
    var DEFLATING = 1;
    var GET_BLOB_DATA = 2;
    var Sender2 = class _Sender {
      /**
       * Creates a Sender instance.
       *
       * @param {Duplex} socket The connection socket
       * @param {Object} [extensions] An object containing the negotiated extensions
       * @param {Function} [generateMask] The function used to generate the masking
       *     key
       */
      constructor(socket, extensions, generateMask) {
        this._extensions = extensions || {};
        if (generateMask) {
          this._generateMask = generateMask;
          this._maskBuffer = Buffer.alloc(4);
        }
        this._socket = socket;
        this._firstFragment = true;
        this._compress = false;
        this._bufferedBytes = 0;
        this._queue = [];
        this._state = DEFAULT;
        this.onerror = NOOP;
        this[kWebSocket] = void 0;
      }
      /**
       * Frames a piece of data according to the HyBi WebSocket protocol.
       *
       * @param {(Buffer|String)} data The data to frame
       * @param {Object} options Options object
       * @param {Boolean} [options.fin=false] Specifies whether or not to set the
       *     FIN bit
       * @param {Function} [options.generateMask] The function used to generate the
       *     masking key
       * @param {Boolean} [options.mask=false] Specifies whether or not to mask
       *     `data`
       * @param {Buffer} [options.maskBuffer] The buffer used to store the masking
       *     key
       * @param {Number} options.opcode The opcode
       * @param {Boolean} [options.readOnly=false] Specifies whether `data` can be
       *     modified
       * @param {Boolean} [options.rsv1=false] Specifies whether or not to set the
       *     RSV1 bit
       * @return {(Buffer|String)[]} The framed data
       * @public
       */
      static frame(data, options) {
        let mask;
        let merge = false;
        let offset = 2;
        let skipMasking = false;
        if (options.mask) {
          mask = options.maskBuffer || maskBuffer;
          if (options.generateMask) {
            options.generateMask(mask);
          } else {
            if (randomPoolPointer === RANDOM_POOL_SIZE) {
              if (randomPool === void 0) {
                randomPool = Buffer.alloc(RANDOM_POOL_SIZE);
              }
              randomFillSync(randomPool, 0, RANDOM_POOL_SIZE);
              randomPoolPointer = 0;
            }
            mask[0] = randomPool[randomPoolPointer++];
            mask[1] = randomPool[randomPoolPointer++];
            mask[2] = randomPool[randomPoolPointer++];
            mask[3] = randomPool[randomPoolPointer++];
          }
          skipMasking = (mask[0] | mask[1] | mask[2] | mask[3]) === 0;
          offset = 6;
        }
        let dataLength;
        if (typeof data === "string") {
          if ((!options.mask || skipMasking) && options[kByteLength] !== void 0) {
            dataLength = options[kByteLength];
          } else {
            data = Buffer.from(data);
            dataLength = data.length;
          }
        } else {
          dataLength = data.length;
          merge = options.mask && options.readOnly && !skipMasking;
        }
        let payloadLength = dataLength;
        if (dataLength >= 65536) {
          offset += 8;
          payloadLength = 127;
        } else if (dataLength > 125) {
          offset += 2;
          payloadLength = 126;
        }
        const target = Buffer.allocUnsafe(merge ? dataLength + offset : offset);
        target[0] = options.fin ? options.opcode | 128 : options.opcode;
        if (options.rsv1) target[0] |= 64;
        target[1] = payloadLength;
        if (payloadLength === 126) {
          target.writeUInt16BE(dataLength, 2);
        } else if (payloadLength === 127) {
          target[2] = target[3] = 0;
          target.writeUIntBE(dataLength, 4, 6);
        }
        if (!options.mask) return [target, data];
        target[1] |= 128;
        target[offset - 4] = mask[0];
        target[offset - 3] = mask[1];
        target[offset - 2] = mask[2];
        target[offset - 1] = mask[3];
        if (skipMasking) return [target, data];
        if (merge) {
          applyMask(data, mask, target, offset, dataLength);
          return [target];
        }
        applyMask(data, mask, data, 0, dataLength);
        return [target, data];
      }
      /**
       * Sends a close message to the other peer.
       *
       * @param {Number} [code] The status code component of the body
       * @param {(String|Buffer)} [data] The message component of the body
       * @param {Boolean} [mask=false] Specifies whether or not to mask the message
       * @param {Function} [cb] Callback
       * @public
       */
      close(code, data, mask, cb) {
        let buf;
        if (code === void 0) {
          buf = EMPTY_BUFFER;
        } else if (typeof code !== "number" || !isValidStatusCode(code)) {
          throw new TypeError("First argument must be a valid error code number");
        } else if (data === void 0 || !data.length) {
          buf = Buffer.allocUnsafe(2);
          buf.writeUInt16BE(code, 0);
        } else {
          const length = Buffer.byteLength(data);
          if (length > 123) {
            throw new RangeError("The message must not be greater than 123 bytes");
          }
          buf = Buffer.allocUnsafe(2 + length);
          buf.writeUInt16BE(code, 0);
          if (typeof data === "string") {
            buf.write(data, 2);
          } else {
            buf.set(data, 2);
          }
        }
        const options = {
          [kByteLength]: buf.length,
          fin: true,
          generateMask: this._generateMask,
          mask,
          maskBuffer: this._maskBuffer,
          opcode: 8,
          readOnly: false,
          rsv1: false
        };
        if (this._state !== DEFAULT) {
          this.enqueue([this.dispatch, buf, false, options, cb]);
        } else {
          this.sendFrame(_Sender.frame(buf, options), cb);
        }
      }
      /**
       * Sends a ping message to the other peer.
       *
       * @param {*} data The message to send
       * @param {Boolean} [mask=false] Specifies whether or not to mask `data`
       * @param {Function} [cb] Callback
       * @public
       */
      ping(data, mask, cb) {
        let byteLength;
        let readOnly;
        if (typeof data === "string") {
          byteLength = Buffer.byteLength(data);
          readOnly = false;
        } else if (isBlob(data)) {
          byteLength = data.size;
          readOnly = false;
        } else {
          data = toBuffer(data);
          byteLength = data.length;
          readOnly = toBuffer.readOnly;
        }
        if (byteLength > 125) {
          throw new RangeError("The data size must not be greater than 125 bytes");
        }
        const options = {
          [kByteLength]: byteLength,
          fin: true,
          generateMask: this._generateMask,
          mask,
          maskBuffer: this._maskBuffer,
          opcode: 9,
          readOnly,
          rsv1: false
        };
        if (isBlob(data)) {
          if (this._state !== DEFAULT) {
            this.enqueue([this.getBlobData, data, false, options, cb]);
          } else {
            this.getBlobData(data, false, options, cb);
          }
        } else if (this._state !== DEFAULT) {
          this.enqueue([this.dispatch, data, false, options, cb]);
        } else {
          this.sendFrame(_Sender.frame(data, options), cb);
        }
      }
      /**
       * Sends a pong message to the other peer.
       *
       * @param {*} data The message to send
       * @param {Boolean} [mask=false] Specifies whether or not to mask `data`
       * @param {Function} [cb] Callback
       * @public
       */
      pong(data, mask, cb) {
        let byteLength;
        let readOnly;
        if (typeof data === "string") {
          byteLength = Buffer.byteLength(data);
          readOnly = false;
        } else if (isBlob(data)) {
          byteLength = data.size;
          readOnly = false;
        } else {
          data = toBuffer(data);
          byteLength = data.length;
          readOnly = toBuffer.readOnly;
        }
        if (byteLength > 125) {
          throw new RangeError("The data size must not be greater than 125 bytes");
        }
        const options = {
          [kByteLength]: byteLength,
          fin: true,
          generateMask: this._generateMask,
          mask,
          maskBuffer: this._maskBuffer,
          opcode: 10,
          readOnly,
          rsv1: false
        };
        if (isBlob(data)) {
          if (this._state !== DEFAULT) {
            this.enqueue([this.getBlobData, data, false, options, cb]);
          } else {
            this.getBlobData(data, false, options, cb);
          }
        } else if (this._state !== DEFAULT) {
          this.enqueue([this.dispatch, data, false, options, cb]);
        } else {
          this.sendFrame(_Sender.frame(data, options), cb);
        }
      }
      /**
       * Sends a data message to the other peer.
       *
       * @param {*} data The message to send
       * @param {Object} options Options object
       * @param {Boolean} [options.binary=false] Specifies whether `data` is binary
       *     or text
       * @param {Boolean} [options.compress=false] Specifies whether or not to
       *     compress `data`
       * @param {Boolean} [options.fin=false] Specifies whether the fragment is the
       *     last one
       * @param {Boolean} [options.mask=false] Specifies whether or not to mask
       *     `data`
       * @param {Function} [cb] Callback
       * @public
       */
      send(data, options, cb) {
        const perMessageDeflate = this._extensions[PerMessageDeflate.extensionName];
        let opcode = options.binary ? 2 : 1;
        let rsv1 = options.compress;
        let byteLength;
        let readOnly;
        if (typeof data === "string") {
          byteLength = Buffer.byteLength(data);
          readOnly = false;
        } else if (isBlob(data)) {
          byteLength = data.size;
          readOnly = false;
        } else {
          data = toBuffer(data);
          byteLength = data.length;
          readOnly = toBuffer.readOnly;
        }
        if (this._firstFragment) {
          this._firstFragment = false;
          if (rsv1 && perMessageDeflate && perMessageDeflate.params[perMessageDeflate._isServer ? "server_no_context_takeover" : "client_no_context_takeover"]) {
            rsv1 = byteLength >= perMessageDeflate._threshold;
          }
          this._compress = rsv1;
        } else {
          rsv1 = false;
          opcode = 0;
        }
        if (options.fin) this._firstFragment = true;
        const opts = {
          [kByteLength]: byteLength,
          fin: options.fin,
          generateMask: this._generateMask,
          mask: options.mask,
          maskBuffer: this._maskBuffer,
          opcode,
          readOnly,
          rsv1
        };
        if (isBlob(data)) {
          if (this._state !== DEFAULT) {
            this.enqueue([this.getBlobData, data, this._compress, opts, cb]);
          } else {
            this.getBlobData(data, this._compress, opts, cb);
          }
        } else if (this._state !== DEFAULT) {
          this.enqueue([this.dispatch, data, this._compress, opts, cb]);
        } else {
          this.dispatch(data, this._compress, opts, cb);
        }
      }
      /**
       * Gets the contents of a blob as binary data.
       *
       * @param {Blob} blob The blob
       * @param {Boolean} [compress=false] Specifies whether or not to compress
       *     the data
       * @param {Object} options Options object
       * @param {Boolean} [options.fin=false] Specifies whether or not to set the
       *     FIN bit
       * @param {Function} [options.generateMask] The function used to generate the
       *     masking key
       * @param {Boolean} [options.mask=false] Specifies whether or not to mask
       *     `data`
       * @param {Buffer} [options.maskBuffer] The buffer used to store the masking
       *     key
       * @param {Number} options.opcode The opcode
       * @param {Boolean} [options.readOnly=false] Specifies whether `data` can be
       *     modified
       * @param {Boolean} [options.rsv1=false] Specifies whether or not to set the
       *     RSV1 bit
       * @param {Function} [cb] Callback
       * @private
       */
      getBlobData(blob, compress, options, cb) {
        this._bufferedBytes += options[kByteLength];
        this._state = GET_BLOB_DATA;
        blob.arrayBuffer().then((arrayBuffer) => {
          if (this._socket.destroyed) {
            const err = new Error(
              "The socket was closed while the blob was being read"
            );
            process.nextTick(callCallbacks, this, err, cb);
            return;
          }
          this._bufferedBytes -= options[kByteLength];
          const data = toBuffer(arrayBuffer);
          if (!compress) {
            this._state = DEFAULT;
            this.sendFrame(_Sender.frame(data, options), cb);
            this.dequeue();
          } else {
            this.dispatch(data, compress, options, cb);
          }
        }).catch((err) => {
          process.nextTick(onError, this, err, cb);
        });
      }
      /**
       * Dispatches a message.
       *
       * @param {(Buffer|String)} data The message to send
       * @param {Boolean} [compress=false] Specifies whether or not to compress
       *     `data`
       * @param {Object} options Options object
       * @param {Boolean} [options.fin=false] Specifies whether or not to set the
       *     FIN bit
       * @param {Function} [options.generateMask] The function used to generate the
       *     masking key
       * @param {Boolean} [options.mask=false] Specifies whether or not to mask
       *     `data`
       * @param {Buffer} [options.maskBuffer] The buffer used to store the masking
       *     key
       * @param {Number} options.opcode The opcode
       * @param {Boolean} [options.readOnly=false] Specifies whether `data` can be
       *     modified
       * @param {Boolean} [options.rsv1=false] Specifies whether or not to set the
       *     RSV1 bit
       * @param {Function} [cb] Callback
       * @private
       */
      dispatch(data, compress, options, cb) {
        if (!compress) {
          this.sendFrame(_Sender.frame(data, options), cb);
          return;
        }
        const perMessageDeflate = this._extensions[PerMessageDeflate.extensionName];
        this._bufferedBytes += options[kByteLength];
        this._state = DEFLATING;
        perMessageDeflate.compress(data, options.fin, (_, buf) => {
          if (this._socket.destroyed) {
            const err = new Error(
              "The socket was closed while data was being compressed"
            );
            callCallbacks(this, err, cb);
            return;
          }
          this._bufferedBytes -= options[kByteLength];
          this._state = DEFAULT;
          options.readOnly = false;
          this.sendFrame(_Sender.frame(buf, options), cb);
          this.dequeue();
        });
      }
      /**
       * Executes queued send operations.
       *
       * @private
       */
      dequeue() {
        while (this._state === DEFAULT && this._queue.length) {
          const params = this._queue.shift();
          this._bufferedBytes -= params[3][kByteLength];
          Reflect.apply(params[0], this, params.slice(1));
        }
      }
      /**
       * Enqueues a send operation.
       *
       * @param {Array} params Send operation parameters.
       * @private
       */
      enqueue(params) {
        this._bufferedBytes += params[3][kByteLength];
        this._queue.push(params);
      }
      /**
       * Sends a frame.
       *
       * @param {(Buffer | String)[]} list The frame to send
       * @param {Function} [cb] Callback
       * @private
       */
      sendFrame(list, cb) {
        if (list.length === 2) {
          this._socket.cork();
          this._socket.write(list[0]);
          this._socket.write(list[1], cb);
          this._socket.uncork();
        } else {
          this._socket.write(list[0], cb);
        }
      }
    };
    module2.exports = Sender2;
    function callCallbacks(sender, err, cb) {
      if (typeof cb === "function") cb(err);
      for (let i = 0; i < sender._queue.length; i++) {
        const params = sender._queue[i];
        const callback = params[params.length - 1];
        if (typeof callback === "function") callback(err);
      }
    }
    function onError(sender, err, cb) {
      callCallbacks(sender, err, cb);
      sender.onerror(err);
    }
  }
});

// node_modules/ws/lib/event-target.js
var require_event_target = __commonJS({
  "node_modules/ws/lib/event-target.js"(exports2, module2) {
    "use strict";
    var { kForOnEventAttribute, kListener } = require_constants();
    var kCode = Symbol("kCode");
    var kData = Symbol("kData");
    var kError = Symbol("kError");
    var kMessage = Symbol("kMessage");
    var kReason = Symbol("kReason");
    var kTarget = Symbol("kTarget");
    var kType = Symbol("kType");
    var kWasClean = Symbol("kWasClean");
    var Event = class {
      /**
       * Create a new `Event`.
       *
       * @param {String} type The name of the event
       * @throws {TypeError} If the `type` argument is not specified
       */
      constructor(type) {
        this[kTarget] = null;
        this[kType] = type;
      }
      /**
       * @type {*}
       */
      get target() {
        return this[kTarget];
      }
      /**
       * @type {String}
       */
      get type() {
        return this[kType];
      }
    };
    Object.defineProperty(Event.prototype, "target", { enumerable: true });
    Object.defineProperty(Event.prototype, "type", { enumerable: true });
    var CloseEvent = class extends Event {
      /**
       * Create a new `CloseEvent`.
       *
       * @param {String} type The name of the event
       * @param {Object} [options] A dictionary object that allows for setting
       *     attributes via object members of the same name
       * @param {Number} [options.code=0] The status code explaining why the
       *     connection was closed
       * @param {String} [options.reason=''] A human-readable string explaining why
       *     the connection was closed
       * @param {Boolean} [options.wasClean=false] Indicates whether or not the
       *     connection was cleanly closed
       */
      constructor(type, options = {}) {
        super(type);
        this[kCode] = options.code === void 0 ? 0 : options.code;
        this[kReason] = options.reason === void 0 ? "" : options.reason;
        this[kWasClean] = options.wasClean === void 0 ? false : options.wasClean;
      }
      /**
       * @type {Number}
       */
      get code() {
        return this[kCode];
      }
      /**
       * @type {String}
       */
      get reason() {
        return this[kReason];
      }
      /**
       * @type {Boolean}
       */
      get wasClean() {
        return this[kWasClean];
      }
    };
    Object.defineProperty(CloseEvent.prototype, "code", { enumerable: true });
    Object.defineProperty(CloseEvent.prototype, "reason", { enumerable: true });
    Object.defineProperty(CloseEvent.prototype, "wasClean", { enumerable: true });
    var ErrorEvent = class extends Event {
      /**
       * Create a new `ErrorEvent`.
       *
       * @param {String} type The name of the event
       * @param {Object} [options] A dictionary object that allows for setting
       *     attributes via object members of the same name
       * @param {*} [options.error=null] The error that generated this event
       * @param {String} [options.message=''] The error message
       */
      constructor(type, options = {}) {
        super(type);
        this[kError] = options.error === void 0 ? null : options.error;
        this[kMessage] = options.message === void 0 ? "" : options.message;
      }
      /**
       * @type {*}
       */
      get error() {
        return this[kError];
      }
      /**
       * @type {String}
       */
      get message() {
        return this[kMessage];
      }
    };
    Object.defineProperty(ErrorEvent.prototype, "error", { enumerable: true });
    Object.defineProperty(ErrorEvent.prototype, "message", { enumerable: true });
    var MessageEvent = class extends Event {
      /**
       * Create a new `MessageEvent`.
       *
       * @param {String} type The name of the event
       * @param {Object} [options] A dictionary object that allows for setting
       *     attributes via object members of the same name
       * @param {*} [options.data=null] The message content
       */
      constructor(type, options = {}) {
        super(type);
        this[kData] = options.data === void 0 ? null : options.data;
      }
      /**
       * @type {*}
       */
      get data() {
        return this[kData];
      }
    };
    Object.defineProperty(MessageEvent.prototype, "data", { enumerable: true });
    var EventTarget = {
      /**
       * Register an event listener.
       *
       * @param {String} type A string representing the event type to listen for
       * @param {(Function|Object)} handler The listener to add
       * @param {Object} [options] An options object specifies characteristics about
       *     the event listener
       * @param {Boolean} [options.once=false] A `Boolean` indicating that the
       *     listener should be invoked at most once after being added. If `true`,
       *     the listener would be automatically removed when invoked.
       * @public
       */
      addEventListener(type, handler, options = {}) {
        for (const listener of this.listeners(type)) {
          if (!options[kForOnEventAttribute] && listener[kListener] === handler && !listener[kForOnEventAttribute]) {
            return;
          }
        }
        let wrapper;
        if (type === "message") {
          wrapper = function onMessage(data, isBinary) {
            const event = new MessageEvent("message", {
              data: isBinary ? data : data.toString()
            });
            event[kTarget] = this;
            callListener(handler, this, event);
          };
        } else if (type === "close") {
          wrapper = function onClose(code, message) {
            const event = new CloseEvent("close", {
              code,
              reason: message.toString(),
              wasClean: this._closeFrameReceived && this._closeFrameSent
            });
            event[kTarget] = this;
            callListener(handler, this, event);
          };
        } else if (type === "error") {
          wrapper = function onError(error) {
            const event = new ErrorEvent("error", {
              error,
              message: error.message
            });
            event[kTarget] = this;
            callListener(handler, this, event);
          };
        } else if (type === "open") {
          wrapper = function onOpen() {
            const event = new Event("open");
            event[kTarget] = this;
            callListener(handler, this, event);
          };
        } else {
          return;
        }
        wrapper[kForOnEventAttribute] = !!options[kForOnEventAttribute];
        wrapper[kListener] = handler;
        if (options.once) {
          this.once(type, wrapper);
        } else {
          this.on(type, wrapper);
        }
      },
      /**
       * Remove an event listener.
       *
       * @param {String} type A string representing the event type to remove
       * @param {(Function|Object)} handler The listener to remove
       * @public
       */
      removeEventListener(type, handler) {
        for (const listener of this.listeners(type)) {
          if (listener[kListener] === handler && !listener[kForOnEventAttribute]) {
            this.removeListener(type, listener);
            break;
          }
        }
      }
    };
    module2.exports = {
      CloseEvent,
      ErrorEvent,
      Event,
      EventTarget,
      MessageEvent
    };
    function callListener(listener, thisArg, event) {
      if (typeof listener === "object" && listener.handleEvent) {
        listener.handleEvent.call(listener, event);
      } else {
        listener.call(thisArg, event);
      }
    }
  }
});

// node_modules/ws/lib/extension.js
var require_extension = __commonJS({
  "node_modules/ws/lib/extension.js"(exports2, module2) {
    "use strict";
    var { tokenChars } = require_validation();
    function push(dest, name, elem) {
      if (dest[name] === void 0) dest[name] = [elem];
      else dest[name].push(elem);
    }
    function parse(header) {
      const offers = /* @__PURE__ */ Object.create(null);
      let params = /* @__PURE__ */ Object.create(null);
      let mustUnescape = false;
      let isEscaping = false;
      let inQuotes = false;
      let extensionName;
      let paramName;
      let start = -1;
      let code = -1;
      let end = -1;
      let i = 0;
      for (; i < header.length; i++) {
        code = header.charCodeAt(i);
        if (extensionName === void 0) {
          if (end === -1 && tokenChars[code] === 1) {
            if (start === -1) start = i;
          } else if (i !== 0 && (code === 32 || code === 9)) {
            if (end === -1 && start !== -1) end = i;
          } else if (code === 59 || code === 44) {
            if (start === -1) {
              throw new SyntaxError(`Unexpected character at index ${i}`);
            }
            if (end === -1) end = i;
            const name = header.slice(start, end);
            if (code === 44) {
              push(offers, name, params);
              params = /* @__PURE__ */ Object.create(null);
            } else {
              extensionName = name;
            }
            start = end = -1;
          } else {
            throw new SyntaxError(`Unexpected character at index ${i}`);
          }
        } else if (paramName === void 0) {
          if (end === -1 && tokenChars[code] === 1) {
            if (start === -1) start = i;
          } else if (code === 32 || code === 9) {
            if (end === -1 && start !== -1) end = i;
          } else if (code === 59 || code === 44) {
            if (start === -1) {
              throw new SyntaxError(`Unexpected character at index ${i}`);
            }
            if (end === -1) end = i;
            push(params, header.slice(start, end), true);
            if (code === 44) {
              push(offers, extensionName, params);
              params = /* @__PURE__ */ Object.create(null);
              extensionName = void 0;
            }
            start = end = -1;
          } else if (code === 61 && start !== -1 && end === -1) {
            paramName = header.slice(start, i);
            start = end = -1;
          } else {
            throw new SyntaxError(`Unexpected character at index ${i}`);
          }
        } else {
          if (isEscaping) {
            if (tokenChars[code] !== 1) {
              throw new SyntaxError(`Unexpected character at index ${i}`);
            }
            if (start === -1) start = i;
            else if (!mustUnescape) mustUnescape = true;
            isEscaping = false;
          } else if (inQuotes) {
            if (tokenChars[code] === 1) {
              if (start === -1) start = i;
            } else if (code === 34 && start !== -1) {
              inQuotes = false;
              end = i;
            } else if (code === 92) {
              isEscaping = true;
            } else {
              throw new SyntaxError(`Unexpected character at index ${i}`);
            }
          } else if (code === 34 && header.charCodeAt(i - 1) === 61) {
            inQuotes = true;
          } else if (end === -1 && tokenChars[code] === 1) {
            if (start === -1) start = i;
          } else if (start !== -1 && (code === 32 || code === 9)) {
            if (end === -1) end = i;
          } else if (code === 59 || code === 44) {
            if (start === -1) {
              throw new SyntaxError(`Unexpected character at index ${i}`);
            }
            if (end === -1) end = i;
            let value = header.slice(start, end);
            if (mustUnescape) {
              value = value.replace(/\\/g, "");
              mustUnescape = false;
            }
            push(params, paramName, value);
            if (code === 44) {
              push(offers, extensionName, params);
              params = /* @__PURE__ */ Object.create(null);
              extensionName = void 0;
            }
            paramName = void 0;
            start = end = -1;
          } else {
            throw new SyntaxError(`Unexpected character at index ${i}`);
          }
        }
      }
      if (start === -1 || inQuotes || code === 32 || code === 9) {
        throw new SyntaxError("Unexpected end of input");
      }
      if (end === -1) end = i;
      const token = header.slice(start, end);
      if (extensionName === void 0) {
        push(offers, token, params);
      } else {
        if (paramName === void 0) {
          push(params, token, true);
        } else if (mustUnescape) {
          push(params, paramName, token.replace(/\\/g, ""));
        } else {
          push(params, paramName, token);
        }
        push(offers, extensionName, params);
      }
      return offers;
    }
    function format(extensions) {
      return Object.keys(extensions).map((extension) => {
        let configurations = extensions[extension];
        if (!Array.isArray(configurations)) configurations = [configurations];
        return configurations.map((params) => {
          return [extension].concat(
            Object.keys(params).map((k) => {
              let values = params[k];
              if (!Array.isArray(values)) values = [values];
              return values.map((v) => v === true ? k : `${k}=${v}`).join("; ");
            })
          ).join("; ");
        }).join(", ");
      }).join(", ");
    }
    module2.exports = { format, parse };
  }
});

// node_modules/ws/lib/websocket.js
var require_websocket = __commonJS({
  "node_modules/ws/lib/websocket.js"(exports2, module2) {
    "use strict";
    var EventEmitter = require("events");
    var https = require("https");
    var http2 = require("http");
    var net = require("net");
    var tls = require("tls");
    var { randomBytes, createHash } = require("crypto");
    var { Duplex, Readable } = require("stream");
    var { URL } = require("url");
    var PerMessageDeflate = require_permessage_deflate();
    var Receiver2 = require_receiver();
    var Sender2 = require_sender();
    var { isBlob } = require_validation();
    var {
      BINARY_TYPES,
      EMPTY_BUFFER,
      GUID,
      kForOnEventAttribute,
      kListener,
      kStatusCode,
      kWebSocket,
      NOOP
    } = require_constants();
    var {
      EventTarget: { addEventListener, removeEventListener }
    } = require_event_target();
    var { format, parse } = require_extension();
    var { toBuffer } = require_buffer_util();
    var closeTimeout = 30 * 1e3;
    var kAborted = Symbol("kAborted");
    var protocolVersions = [8, 13];
    var readyStates = ["CONNECTING", "OPEN", "CLOSING", "CLOSED"];
    var subprotocolRegex = /^[!#$%&'*+\-.0-9A-Z^_`|a-z~]+$/;
    var WebSocket2 = class _WebSocket extends EventEmitter {
      /**
       * Create a new `WebSocket`.
       *
       * @param {(String|URL)} address The URL to which to connect
       * @param {(String|String[])} [protocols] The subprotocols
       * @param {Object} [options] Connection options
       */
      constructor(address, protocols, options) {
        super();
        this._binaryType = BINARY_TYPES[0];
        this._closeCode = 1006;
        this._closeFrameReceived = false;
        this._closeFrameSent = false;
        this._closeMessage = EMPTY_BUFFER;
        this._closeTimer = null;
        this._errorEmitted = false;
        this._extensions = {};
        this._paused = false;
        this._protocol = "";
        this._readyState = _WebSocket.CONNECTING;
        this._receiver = null;
        this._sender = null;
        this._socket = null;
        if (address !== null) {
          this._bufferedAmount = 0;
          this._isServer = false;
          this._redirects = 0;
          if (protocols === void 0) {
            protocols = [];
          } else if (!Array.isArray(protocols)) {
            if (typeof protocols === "object" && protocols !== null) {
              options = protocols;
              protocols = [];
            } else {
              protocols = [protocols];
            }
          }
          initAsClient(this, address, protocols, options);
        } else {
          this._autoPong = options.autoPong;
          this._isServer = true;
        }
      }
      /**
       * For historical reasons, the custom "nodebuffer" type is used by the default
       * instead of "blob".
       *
       * @type {String}
       */
      get binaryType() {
        return this._binaryType;
      }
      set binaryType(type) {
        if (!BINARY_TYPES.includes(type)) return;
        this._binaryType = type;
        if (this._receiver) this._receiver._binaryType = type;
      }
      /**
       * @type {Number}
       */
      get bufferedAmount() {
        if (!this._socket) return this._bufferedAmount;
        return this._socket._writableState.length + this._sender._bufferedBytes;
      }
      /**
       * @type {String}
       */
      get extensions() {
        return Object.keys(this._extensions).join();
      }
      /**
       * @type {Boolean}
       */
      get isPaused() {
        return this._paused;
      }
      /**
       * @type {Function}
       */
      /* istanbul ignore next */
      get onclose() {
        return null;
      }
      /**
       * @type {Function}
       */
      /* istanbul ignore next */
      get onerror() {
        return null;
      }
      /**
       * @type {Function}
       */
      /* istanbul ignore next */
      get onopen() {
        return null;
      }
      /**
       * @type {Function}
       */
      /* istanbul ignore next */
      get onmessage() {
        return null;
      }
      /**
       * @type {String}
       */
      get protocol() {
        return this._protocol;
      }
      /**
       * @type {Number}
       */
      get readyState() {
        return this._readyState;
      }
      /**
       * @type {String}
       */
      get url() {
        return this._url;
      }
      /**
       * Set up the socket and the internal resources.
       *
       * @param {Duplex} socket The network socket between the server and client
       * @param {Buffer} head The first packet of the upgraded stream
       * @param {Object} options Options object
       * @param {Boolean} [options.allowSynchronousEvents=false] Specifies whether
       *     any of the `'message'`, `'ping'`, and `'pong'` events can be emitted
       *     multiple times in the same tick
       * @param {Function} [options.generateMask] The function used to generate the
       *     masking key
       * @param {Number} [options.maxPayload=0] The maximum allowed message size
       * @param {Boolean} [options.skipUTF8Validation=false] Specifies whether or
       *     not to skip UTF-8 validation for text and close messages
       * @private
       */
      setSocket(socket, head, options) {
        const receiver = new Receiver2({
          allowSynchronousEvents: options.allowSynchronousEvents,
          binaryType: this.binaryType,
          extensions: this._extensions,
          isServer: this._isServer,
          maxPayload: options.maxPayload,
          skipUTF8Validation: options.skipUTF8Validation
        });
        const sender = new Sender2(socket, this._extensions, options.generateMask);
        this._receiver = receiver;
        this._sender = sender;
        this._socket = socket;
        receiver[kWebSocket] = this;
        sender[kWebSocket] = this;
        socket[kWebSocket] = this;
        receiver.on("conclude", receiverOnConclude);
        receiver.on("drain", receiverOnDrain);
        receiver.on("error", receiverOnError);
        receiver.on("message", receiverOnMessage);
        receiver.on("ping", receiverOnPing);
        receiver.on("pong", receiverOnPong);
        sender.onerror = senderOnError;
        if (socket.setTimeout) socket.setTimeout(0);
        if (socket.setNoDelay) socket.setNoDelay();
        if (head.length > 0) socket.unshift(head);
        socket.on("close", socketOnClose);
        socket.on("data", socketOnData);
        socket.on("end", socketOnEnd);
        socket.on("error", socketOnError);
        this._readyState = _WebSocket.OPEN;
        this.emit("open");
      }
      /**
       * Emit the `'close'` event.
       *
       * @private
       */
      emitClose() {
        if (!this._socket) {
          this._readyState = _WebSocket.CLOSED;
          this.emit("close", this._closeCode, this._closeMessage);
          return;
        }
        if (this._extensions[PerMessageDeflate.extensionName]) {
          this._extensions[PerMessageDeflate.extensionName].cleanup();
        }
        this._receiver.removeAllListeners();
        this._readyState = _WebSocket.CLOSED;
        this.emit("close", this._closeCode, this._closeMessage);
      }
      /**
       * Start a closing handshake.
       *
       *          +----------+   +-----------+   +----------+
       *     - - -|ws.close()|-->|close frame|-->|ws.close()|- - -
       *    |     +----------+   +-----------+   +----------+     |
       *          +----------+   +-----------+         |
       * CLOSING  |ws.close()|<--|close frame|<--+-----+       CLOSING
       *          +----------+   +-----------+   |
       *    |           |                        |   +---+        |
       *                +------------------------+-->|fin| - - - -
       *    |         +---+                      |   +---+
       *     - - - - -|fin|<---------------------+
       *              +---+
       *
       * @param {Number} [code] Status code explaining why the connection is closing
       * @param {(String|Buffer)} [data] The reason why the connection is
       *     closing
       * @public
       */
      close(code, data) {
        if (this.readyState === _WebSocket.CLOSED) return;
        if (this.readyState === _WebSocket.CONNECTING) {
          const msg = "WebSocket was closed before the connection was established";
          abortHandshake(this, this._req, msg);
          return;
        }
        if (this.readyState === _WebSocket.CLOSING) {
          if (this._closeFrameSent && (this._closeFrameReceived || this._receiver._writableState.errorEmitted)) {
            this._socket.end();
          }
          return;
        }
        this._readyState = _WebSocket.CLOSING;
        this._sender.close(code, data, !this._isServer, (err) => {
          if (err) return;
          this._closeFrameSent = true;
          if (this._closeFrameReceived || this._receiver._writableState.errorEmitted) {
            this._socket.end();
          }
        });
        setCloseTimer(this);
      }
      /**
       * Pause the socket.
       *
       * @public
       */
      pause() {
        if (this.readyState === _WebSocket.CONNECTING || this.readyState === _WebSocket.CLOSED) {
          return;
        }
        this._paused = true;
        this._socket.pause();
      }
      /**
       * Send a ping.
       *
       * @param {*} [data] The data to send
       * @param {Boolean} [mask] Indicates whether or not to mask `data`
       * @param {Function} [cb] Callback which is executed when the ping is sent
       * @public
       */
      ping(data, mask, cb) {
        if (this.readyState === _WebSocket.CONNECTING) {
          throw new Error("WebSocket is not open: readyState 0 (CONNECTING)");
        }
        if (typeof data === "function") {
          cb = data;
          data = mask = void 0;
        } else if (typeof mask === "function") {
          cb = mask;
          mask = void 0;
        }
        if (typeof data === "number") data = data.toString();
        if (this.readyState !== _WebSocket.OPEN) {
          sendAfterClose(this, data, cb);
          return;
        }
        if (mask === void 0) mask = !this._isServer;
        this._sender.ping(data || EMPTY_BUFFER, mask, cb);
      }
      /**
       * Send a pong.
       *
       * @param {*} [data] The data to send
       * @param {Boolean} [mask] Indicates whether or not to mask `data`
       * @param {Function} [cb] Callback which is executed when the pong is sent
       * @public
       */
      pong(data, mask, cb) {
        if (this.readyState === _WebSocket.CONNECTING) {
          throw new Error("WebSocket is not open: readyState 0 (CONNECTING)");
        }
        if (typeof data === "function") {
          cb = data;
          data = mask = void 0;
        } else if (typeof mask === "function") {
          cb = mask;
          mask = void 0;
        }
        if (typeof data === "number") data = data.toString();
        if (this.readyState !== _WebSocket.OPEN) {
          sendAfterClose(this, data, cb);
          return;
        }
        if (mask === void 0) mask = !this._isServer;
        this._sender.pong(data || EMPTY_BUFFER, mask, cb);
      }
      /**
       * Resume the socket.
       *
       * @public
       */
      resume() {
        if (this.readyState === _WebSocket.CONNECTING || this.readyState === _WebSocket.CLOSED) {
          return;
        }
        this._paused = false;
        if (!this._receiver._writableState.needDrain) this._socket.resume();
      }
      /**
       * Send a data message.
       *
       * @param {*} data The message to send
       * @param {Object} [options] Options object
       * @param {Boolean} [options.binary] Specifies whether `data` is binary or
       *     text
       * @param {Boolean} [options.compress] Specifies whether or not to compress
       *     `data`
       * @param {Boolean} [options.fin=true] Specifies whether the fragment is the
       *     last one
       * @param {Boolean} [options.mask] Specifies whether or not to mask `data`
       * @param {Function} [cb] Callback which is executed when data is written out
       * @public
       */
      send(data, options, cb) {
        if (this.readyState === _WebSocket.CONNECTING) {
          throw new Error("WebSocket is not open: readyState 0 (CONNECTING)");
        }
        if (typeof options === "function") {
          cb = options;
          options = {};
        }
        if (typeof data === "number") data = data.toString();
        if (this.readyState !== _WebSocket.OPEN) {
          sendAfterClose(this, data, cb);
          return;
        }
        const opts = {
          binary: typeof data !== "string",
          mask: !this._isServer,
          compress: true,
          fin: true,
          ...options
        };
        if (!this._extensions[PerMessageDeflate.extensionName]) {
          opts.compress = false;
        }
        this._sender.send(data || EMPTY_BUFFER, opts, cb);
      }
      /**
       * Forcibly close the connection.
       *
       * @public
       */
      terminate() {
        if (this.readyState === _WebSocket.CLOSED) return;
        if (this.readyState === _WebSocket.CONNECTING) {
          const msg = "WebSocket was closed before the connection was established";
          abortHandshake(this, this._req, msg);
          return;
        }
        if (this._socket) {
          this._readyState = _WebSocket.CLOSING;
          this._socket.destroy();
        }
      }
    };
    Object.defineProperty(WebSocket2, "CONNECTING", {
      enumerable: true,
      value: readyStates.indexOf("CONNECTING")
    });
    Object.defineProperty(WebSocket2.prototype, "CONNECTING", {
      enumerable: true,
      value: readyStates.indexOf("CONNECTING")
    });
    Object.defineProperty(WebSocket2, "OPEN", {
      enumerable: true,
      value: readyStates.indexOf("OPEN")
    });
    Object.defineProperty(WebSocket2.prototype, "OPEN", {
      enumerable: true,
      value: readyStates.indexOf("OPEN")
    });
    Object.defineProperty(WebSocket2, "CLOSING", {
      enumerable: true,
      value: readyStates.indexOf("CLOSING")
    });
    Object.defineProperty(WebSocket2.prototype, "CLOSING", {
      enumerable: true,
      value: readyStates.indexOf("CLOSING")
    });
    Object.defineProperty(WebSocket2, "CLOSED", {
      enumerable: true,
      value: readyStates.indexOf("CLOSED")
    });
    Object.defineProperty(WebSocket2.prototype, "CLOSED", {
      enumerable: true,
      value: readyStates.indexOf("CLOSED")
    });
    [
      "binaryType",
      "bufferedAmount",
      "extensions",
      "isPaused",
      "protocol",
      "readyState",
      "url"
    ].forEach((property) => {
      Object.defineProperty(WebSocket2.prototype, property, { enumerable: true });
    });
    ["open", "error", "close", "message"].forEach((method) => {
      Object.defineProperty(WebSocket2.prototype, `on${method}`, {
        enumerable: true,
        get() {
          for (const listener of this.listeners(method)) {
            if (listener[kForOnEventAttribute]) return listener[kListener];
          }
          return null;
        },
        set(handler) {
          for (const listener of this.listeners(method)) {
            if (listener[kForOnEventAttribute]) {
              this.removeListener(method, listener);
              break;
            }
          }
          if (typeof handler !== "function") return;
          this.addEventListener(method, handler, {
            [kForOnEventAttribute]: true
          });
        }
      });
    });
    WebSocket2.prototype.addEventListener = addEventListener;
    WebSocket2.prototype.removeEventListener = removeEventListener;
    module2.exports = WebSocket2;
    function initAsClient(websocket, address, protocols, options) {
      const opts = {
        allowSynchronousEvents: true,
        autoPong: true,
        protocolVersion: protocolVersions[1],
        maxPayload: 100 * 1024 * 1024,
        skipUTF8Validation: false,
        perMessageDeflate: true,
        followRedirects: false,
        maxRedirects: 10,
        ...options,
        socketPath: void 0,
        hostname: void 0,
        protocol: void 0,
        timeout: void 0,
        method: "GET",
        host: void 0,
        path: void 0,
        port: void 0
      };
      websocket._autoPong = opts.autoPong;
      if (!protocolVersions.includes(opts.protocolVersion)) {
        throw new RangeError(
          `Unsupported protocol version: ${opts.protocolVersion} (supported versions: ${protocolVersions.join(", ")})`
        );
      }
      let parsedUrl;
      if (address instanceof URL) {
        parsedUrl = address;
      } else {
        try {
          parsedUrl = new URL(address);
        } catch (e) {
          throw new SyntaxError(`Invalid URL: ${address}`);
        }
      }
      if (parsedUrl.protocol === "http:") {
        parsedUrl.protocol = "ws:";
      } else if (parsedUrl.protocol === "https:") {
        parsedUrl.protocol = "wss:";
      }
      websocket._url = parsedUrl.href;
      const isSecure = parsedUrl.protocol === "wss:";
      const isIpcUrl = parsedUrl.protocol === "ws+unix:";
      let invalidUrlMessage;
      if (parsedUrl.protocol !== "ws:" && !isSecure && !isIpcUrl) {
        invalidUrlMessage = `The URL's protocol must be one of "ws:", "wss:", "http:", "https:", or "ws+unix:"`;
      } else if (isIpcUrl && !parsedUrl.pathname) {
        invalidUrlMessage = "The URL's pathname is empty";
      } else if (parsedUrl.hash) {
        invalidUrlMessage = "The URL contains a fragment identifier";
      }
      if (invalidUrlMessage) {
        const err = new SyntaxError(invalidUrlMessage);
        if (websocket._redirects === 0) {
          throw err;
        } else {
          emitErrorAndClose(websocket, err);
          return;
        }
      }
      const defaultPort = isSecure ? 443 : 80;
      const key = randomBytes(16).toString("base64");
      const request = isSecure ? https.request : http2.request;
      const protocolSet = /* @__PURE__ */ new Set();
      let perMessageDeflate;
      opts.createConnection = opts.createConnection || (isSecure ? tlsConnect : netConnect);
      opts.defaultPort = opts.defaultPort || defaultPort;
      opts.port = parsedUrl.port || defaultPort;
      opts.host = parsedUrl.hostname.startsWith("[") ? parsedUrl.hostname.slice(1, -1) : parsedUrl.hostname;
      opts.headers = {
        ...opts.headers,
        "Sec-WebSocket-Version": opts.protocolVersion,
        "Sec-WebSocket-Key": key,
        Connection: "Upgrade",
        Upgrade: "websocket"
      };
      opts.path = parsedUrl.pathname + parsedUrl.search;
      opts.timeout = opts.handshakeTimeout;
      if (opts.perMessageDeflate) {
        perMessageDeflate = new PerMessageDeflate(
          opts.perMessageDeflate !== true ? opts.perMessageDeflate : {},
          false,
          opts.maxPayload
        );
        opts.headers["Sec-WebSocket-Extensions"] = format({
          [PerMessageDeflate.extensionName]: perMessageDeflate.offer()
        });
      }
      if (protocols.length) {
        for (const protocol of protocols) {
          if (typeof protocol !== "string" || !subprotocolRegex.test(protocol) || protocolSet.has(protocol)) {
            throw new SyntaxError(
              "An invalid or duplicated subprotocol was specified"
            );
          }
          protocolSet.add(protocol);
        }
        opts.headers["Sec-WebSocket-Protocol"] = protocols.join(",");
      }
      if (opts.origin) {
        if (opts.protocolVersion < 13) {
          opts.headers["Sec-WebSocket-Origin"] = opts.origin;
        } else {
          opts.headers.Origin = opts.origin;
        }
      }
      if (parsedUrl.username || parsedUrl.password) {
        opts.auth = `${parsedUrl.username}:${parsedUrl.password}`;
      }
      if (isIpcUrl) {
        const parts = opts.path.split(":");
        opts.socketPath = parts[0];
        opts.path = parts[1];
      }
      let req;
      if (opts.followRedirects) {
        if (websocket._redirects === 0) {
          websocket._originalIpc = isIpcUrl;
          websocket._originalSecure = isSecure;
          websocket._originalHostOrSocketPath = isIpcUrl ? opts.socketPath : parsedUrl.host;
          const headers = options && options.headers;
          options = { ...options, headers: {} };
          if (headers) {
            for (const [key2, value] of Object.entries(headers)) {
              options.headers[key2.toLowerCase()] = value;
            }
          }
        } else if (websocket.listenerCount("redirect") === 0) {
          const isSameHost = isIpcUrl ? websocket._originalIpc ? opts.socketPath === websocket._originalHostOrSocketPath : false : websocket._originalIpc ? false : parsedUrl.host === websocket._originalHostOrSocketPath;
          if (!isSameHost || websocket._originalSecure && !isSecure) {
            delete opts.headers.authorization;
            delete opts.headers.cookie;
            if (!isSameHost) delete opts.headers.host;
            opts.auth = void 0;
          }
        }
        if (opts.auth && !options.headers.authorization) {
          options.headers.authorization = "Basic " + Buffer.from(opts.auth).toString("base64");
        }
        req = websocket._req = request(opts);
        if (websocket._redirects) {
          websocket.emit("redirect", websocket.url, req);
        }
      } else {
        req = websocket._req = request(opts);
      }
      if (opts.timeout) {
        req.on("timeout", () => {
          abortHandshake(websocket, req, "Opening handshake has timed out");
        });
      }
      req.on("error", (err) => {
        if (req === null || req[kAborted]) return;
        req = websocket._req = null;
        emitErrorAndClose(websocket, err);
      });
      req.on("response", (res) => {
        const location = res.headers.location;
        const statusCode = res.statusCode;
        if (location && opts.followRedirects && statusCode >= 300 && statusCode < 400) {
          if (++websocket._redirects > opts.maxRedirects) {
            abortHandshake(websocket, req, "Maximum redirects exceeded");
            return;
          }
          req.abort();
          let addr;
          try {
            addr = new URL(location, address);
          } catch (e) {
            const err = new SyntaxError(`Invalid URL: ${location}`);
            emitErrorAndClose(websocket, err);
            return;
          }
          initAsClient(websocket, addr, protocols, options);
        } else if (!websocket.emit("unexpected-response", req, res)) {
          abortHandshake(
            websocket,
            req,
            `Unexpected server response: ${res.statusCode}`
          );
        }
      });
      req.on("upgrade", (res, socket, head) => {
        websocket.emit("upgrade", res);
        if (websocket.readyState !== WebSocket2.CONNECTING) return;
        req = websocket._req = null;
        const upgrade = res.headers.upgrade;
        if (upgrade === void 0 || upgrade.toLowerCase() !== "websocket") {
          abortHandshake(websocket, socket, "Invalid Upgrade header");
          return;
        }
        const digest = createHash("sha1").update(key + GUID).digest("base64");
        if (res.headers["sec-websocket-accept"] !== digest) {
          abortHandshake(websocket, socket, "Invalid Sec-WebSocket-Accept header");
          return;
        }
        const serverProt = res.headers["sec-websocket-protocol"];
        let protError;
        if (serverProt !== void 0) {
          if (!protocolSet.size) {
            protError = "Server sent a subprotocol but none was requested";
          } else if (!protocolSet.has(serverProt)) {
            protError = "Server sent an invalid subprotocol";
          }
        } else if (protocolSet.size) {
          protError = "Server sent no subprotocol";
        }
        if (protError) {
          abortHandshake(websocket, socket, protError);
          return;
        }
        if (serverProt) websocket._protocol = serverProt;
        const secWebSocketExtensions = res.headers["sec-websocket-extensions"];
        if (secWebSocketExtensions !== void 0) {
          if (!perMessageDeflate) {
            const message = "Server sent a Sec-WebSocket-Extensions header but no extension was requested";
            abortHandshake(websocket, socket, message);
            return;
          }
          let extensions;
          try {
            extensions = parse(secWebSocketExtensions);
          } catch (err) {
            const message = "Invalid Sec-WebSocket-Extensions header";
            abortHandshake(websocket, socket, message);
            return;
          }
          const extensionNames = Object.keys(extensions);
          if (extensionNames.length !== 1 || extensionNames[0] !== PerMessageDeflate.extensionName) {
            const message = "Server indicated an extension that was not requested";
            abortHandshake(websocket, socket, message);
            return;
          }
          try {
            perMessageDeflate.accept(extensions[PerMessageDeflate.extensionName]);
          } catch (err) {
            const message = "Invalid Sec-WebSocket-Extensions header";
            abortHandshake(websocket, socket, message);
            return;
          }
          websocket._extensions[PerMessageDeflate.extensionName] = perMessageDeflate;
        }
        websocket.setSocket(socket, head, {
          allowSynchronousEvents: opts.allowSynchronousEvents,
          generateMask: opts.generateMask,
          maxPayload: opts.maxPayload,
          skipUTF8Validation: opts.skipUTF8Validation
        });
      });
      if (opts.finishRequest) {
        opts.finishRequest(req, websocket);
      } else {
        req.end();
      }
    }
    function emitErrorAndClose(websocket, err) {
      websocket._readyState = WebSocket2.CLOSING;
      websocket._errorEmitted = true;
      websocket.emit("error", err);
      websocket.emitClose();
    }
    function netConnect(options) {
      options.path = options.socketPath;
      return net.connect(options);
    }
    function tlsConnect(options) {
      options.path = void 0;
      if (!options.servername && options.servername !== "") {
        options.servername = net.isIP(options.host) ? "" : options.host;
      }
      return tls.connect(options);
    }
    function abortHandshake(websocket, stream, message) {
      websocket._readyState = WebSocket2.CLOSING;
      const err = new Error(message);
      Error.captureStackTrace(err, abortHandshake);
      if (stream.setHeader) {
        stream[kAborted] = true;
        stream.abort();
        if (stream.socket && !stream.socket.destroyed) {
          stream.socket.destroy();
        }
        process.nextTick(emitErrorAndClose, websocket, err);
      } else {
        stream.destroy(err);
        stream.once("error", websocket.emit.bind(websocket, "error"));
        stream.once("close", websocket.emitClose.bind(websocket));
      }
    }
    function sendAfterClose(websocket, data, cb) {
      if (data) {
        const length = isBlob(data) ? data.size : toBuffer(data).length;
        if (websocket._socket) websocket._sender._bufferedBytes += length;
        else websocket._bufferedAmount += length;
      }
      if (cb) {
        const err = new Error(
          `WebSocket is not open: readyState ${websocket.readyState} (${readyStates[websocket.readyState]})`
        );
        process.nextTick(cb, err);
      }
    }
    function receiverOnConclude(code, reason) {
      const websocket = this[kWebSocket];
      websocket._closeFrameReceived = true;
      websocket._closeMessage = reason;
      websocket._closeCode = code;
      if (websocket._socket[kWebSocket] === void 0) return;
      websocket._socket.removeListener("data", socketOnData);
      process.nextTick(resume, websocket._socket);
      if (code === 1005) websocket.close();
      else websocket.close(code, reason);
    }
    function receiverOnDrain() {
      const websocket = this[kWebSocket];
      if (!websocket.isPaused) websocket._socket.resume();
    }
    function receiverOnError(err) {
      const websocket = this[kWebSocket];
      if (websocket._socket[kWebSocket] !== void 0) {
        websocket._socket.removeListener("data", socketOnData);
        process.nextTick(resume, websocket._socket);
        websocket.close(err[kStatusCode]);
      }
      if (!websocket._errorEmitted) {
        websocket._errorEmitted = true;
        websocket.emit("error", err);
      }
    }
    function receiverOnFinish() {
      this[kWebSocket].emitClose();
    }
    function receiverOnMessage(data, isBinary) {
      this[kWebSocket].emit("message", data, isBinary);
    }
    function receiverOnPing(data) {
      const websocket = this[kWebSocket];
      if (websocket._autoPong) websocket.pong(data, !this._isServer, NOOP);
      websocket.emit("ping", data);
    }
    function receiverOnPong(data) {
      this[kWebSocket].emit("pong", data);
    }
    function resume(stream) {
      stream.resume();
    }
    function senderOnError(err) {
      const websocket = this[kWebSocket];
      if (websocket.readyState === WebSocket2.CLOSED) return;
      if (websocket.readyState === WebSocket2.OPEN) {
        websocket._readyState = WebSocket2.CLOSING;
        setCloseTimer(websocket);
      }
      this._socket.end();
      if (!websocket._errorEmitted) {
        websocket._errorEmitted = true;
        websocket.emit("error", err);
      }
    }
    function setCloseTimer(websocket) {
      websocket._closeTimer = setTimeout(
        websocket._socket.destroy.bind(websocket._socket),
        closeTimeout
      );
    }
    function socketOnClose() {
      const websocket = this[kWebSocket];
      this.removeListener("close", socketOnClose);
      this.removeListener("data", socketOnData);
      this.removeListener("end", socketOnEnd);
      websocket._readyState = WebSocket2.CLOSING;
      let chunk;
      if (!this._readableState.endEmitted && !websocket._closeFrameReceived && !websocket._receiver._writableState.errorEmitted && (chunk = websocket._socket.read()) !== null) {
        websocket._receiver.write(chunk);
      }
      websocket._receiver.end();
      this[kWebSocket] = void 0;
      clearTimeout(websocket._closeTimer);
      if (websocket._receiver._writableState.finished || websocket._receiver._writableState.errorEmitted) {
        websocket.emitClose();
      } else {
        websocket._receiver.on("error", receiverOnFinish);
        websocket._receiver.on("finish", receiverOnFinish);
      }
    }
    function socketOnData(chunk) {
      if (!this[kWebSocket]._receiver.write(chunk)) {
        this.pause();
      }
    }
    function socketOnEnd() {
      const websocket = this[kWebSocket];
      websocket._readyState = WebSocket2.CLOSING;
      websocket._receiver.end();
      this.end();
    }
    function socketOnError() {
      const websocket = this[kWebSocket];
      this.removeListener("error", socketOnError);
      this.on("error", NOOP);
      if (websocket) {
        websocket._readyState = WebSocket2.CLOSING;
        this.destroy();
      }
    }
  }
});

// node_modules/ws/lib/stream.js
var require_stream = __commonJS({
  "node_modules/ws/lib/stream.js"(exports2, module2) {
    "use strict";
    var WebSocket2 = require_websocket();
    var { Duplex } = require("stream");
    function emitClose(stream) {
      stream.emit("close");
    }
    function duplexOnEnd() {
      if (!this.destroyed && this._writableState.finished) {
        this.destroy();
      }
    }
    function duplexOnError(err) {
      this.removeListener("error", duplexOnError);
      this.destroy();
      if (this.listenerCount("error") === 0) {
        this.emit("error", err);
      }
    }
    function createWebSocketStream2(ws, options) {
      let terminateOnDestroy = true;
      const duplex = new Duplex({
        ...options,
        autoDestroy: false,
        emitClose: false,
        objectMode: false,
        writableObjectMode: false
      });
      ws.on("message", function message(msg, isBinary) {
        const data = !isBinary && duplex._readableState.objectMode ? msg.toString() : msg;
        if (!duplex.push(data)) ws.pause();
      });
      ws.once("error", function error(err) {
        if (duplex.destroyed) return;
        terminateOnDestroy = false;
        duplex.destroy(err);
      });
      ws.once("close", function close() {
        if (duplex.destroyed) return;
        duplex.push(null);
      });
      duplex._destroy = function(err, callback) {
        if (ws.readyState === ws.CLOSED) {
          callback(err);
          process.nextTick(emitClose, duplex);
          return;
        }
        let called = false;
        ws.once("error", function error(err2) {
          called = true;
          callback(err2);
        });
        ws.once("close", function close() {
          if (!called) callback(err);
          process.nextTick(emitClose, duplex);
        });
        if (terminateOnDestroy) ws.terminate();
      };
      duplex._final = function(callback) {
        if (ws.readyState === ws.CONNECTING) {
          ws.once("open", function open() {
            duplex._final(callback);
          });
          return;
        }
        if (ws._socket === null) return;
        if (ws._socket._writableState.finished) {
          callback();
          if (duplex._readableState.endEmitted) duplex.destroy();
        } else {
          ws._socket.once("finish", function finish() {
            callback();
          });
          ws.close();
        }
      };
      duplex._read = function() {
        if (ws.isPaused) ws.resume();
      };
      duplex._write = function(chunk, encoding, callback) {
        if (ws.readyState === ws.CONNECTING) {
          ws.once("open", function open() {
            duplex._write(chunk, encoding, callback);
          });
          return;
        }
        ws.send(chunk, callback);
      };
      duplex.on("end", duplexOnEnd);
      duplex.on("error", duplexOnError);
      return duplex;
    }
    module2.exports = createWebSocketStream2;
  }
});

// node_modules/ws/lib/subprotocol.js
var require_subprotocol = __commonJS({
  "node_modules/ws/lib/subprotocol.js"(exports2, module2) {
    "use strict";
    var { tokenChars } = require_validation();
    function parse(header) {
      const protocols = /* @__PURE__ */ new Set();
      let start = -1;
      let end = -1;
      let i = 0;
      for (i; i < header.length; i++) {
        const code = header.charCodeAt(i);
        if (end === -1 && tokenChars[code] === 1) {
          if (start === -1) start = i;
        } else if (i !== 0 && (code === 32 || code === 9)) {
          if (end === -1 && start !== -1) end = i;
        } else if (code === 44) {
          if (start === -1) {
            throw new SyntaxError(`Unexpected character at index ${i}`);
          }
          if (end === -1) end = i;
          const protocol2 = header.slice(start, end);
          if (protocols.has(protocol2)) {
            throw new SyntaxError(`The "${protocol2}" subprotocol is duplicated`);
          }
          protocols.add(protocol2);
          start = end = -1;
        } else {
          throw new SyntaxError(`Unexpected character at index ${i}`);
        }
      }
      if (start === -1 || end !== -1) {
        throw new SyntaxError("Unexpected end of input");
      }
      const protocol = header.slice(start, i);
      if (protocols.has(protocol)) {
        throw new SyntaxError(`The "${protocol}" subprotocol is duplicated`);
      }
      protocols.add(protocol);
      return protocols;
    }
    module2.exports = { parse };
  }
});

// node_modules/ws/lib/websocket-server.js
var require_websocket_server = __commonJS({
  "node_modules/ws/lib/websocket-server.js"(exports2, module2) {
    "use strict";
    var EventEmitter = require("events");
    var http2 = require("http");
    var { Duplex } = require("stream");
    var { createHash } = require("crypto");
    var extension = require_extension();
    var PerMessageDeflate = require_permessage_deflate();
    var subprotocol = require_subprotocol();
    var WebSocket2 = require_websocket();
    var { GUID, kWebSocket } = require_constants();
    var keyRegex = /^[+/0-9A-Za-z]{22}==$/;
    var RUNNING = 0;
    var CLOSING = 1;
    var CLOSED = 2;
    var WebSocketServer2 = class extends EventEmitter {
      /**
       * Create a `WebSocketServer` instance.
       *
       * @param {Object} options Configuration options
       * @param {Boolean} [options.allowSynchronousEvents=true] Specifies whether
       *     any of the `'message'`, `'ping'`, and `'pong'` events can be emitted
       *     multiple times in the same tick
       * @param {Boolean} [options.autoPong=true] Specifies whether or not to
       *     automatically send a pong in response to a ping
       * @param {Number} [options.backlog=511] The maximum length of the queue of
       *     pending connections
       * @param {Boolean} [options.clientTracking=true] Specifies whether or not to
       *     track clients
       * @param {Function} [options.handleProtocols] A hook to handle protocols
       * @param {String} [options.host] The hostname where to bind the server
       * @param {Number} [options.maxPayload=104857600] The maximum allowed message
       *     size
       * @param {Boolean} [options.noServer=false] Enable no server mode
       * @param {String} [options.path] Accept only connections matching this path
       * @param {(Boolean|Object)} [options.perMessageDeflate=false] Enable/disable
       *     permessage-deflate
       * @param {Number} [options.port] The port where to bind the server
       * @param {(http.Server|https.Server)} [options.server] A pre-created HTTP/S
       *     server to use
       * @param {Boolean} [options.skipUTF8Validation=false] Specifies whether or
       *     not to skip UTF-8 validation for text and close messages
       * @param {Function} [options.verifyClient] A hook to reject connections
       * @param {Function} [options.WebSocket=WebSocket] Specifies the `WebSocket`
       *     class to use. It must be the `WebSocket` class or class that extends it
       * @param {Function} [callback] A listener for the `listening` event
       */
      constructor(options, callback) {
        super();
        options = {
          allowSynchronousEvents: true,
          autoPong: true,
          maxPayload: 100 * 1024 * 1024,
          skipUTF8Validation: false,
          perMessageDeflate: false,
          handleProtocols: null,
          clientTracking: true,
          verifyClient: null,
          noServer: false,
          backlog: null,
          // use default (511 as implemented in net.js)
          server: null,
          host: null,
          path: null,
          port: null,
          WebSocket: WebSocket2,
          ...options
        };
        if (options.port == null && !options.server && !options.noServer || options.port != null && (options.server || options.noServer) || options.server && options.noServer) {
          throw new TypeError(
            'One and only one of the "port", "server", or "noServer" options must be specified'
          );
        }
        if (options.port != null) {
          this._server = http2.createServer((req, res) => {
            const body = http2.STATUS_CODES[426];
            res.writeHead(426, {
              "Content-Length": body.length,
              "Content-Type": "text/plain"
            });
            res.end(body);
          });
          this._server.listen(
            options.port,
            options.host,
            options.backlog,
            callback
          );
        } else if (options.server) {
          this._server = options.server;
        }
        if (this._server) {
          const emitConnection = this.emit.bind(this, "connection");
          this._removeListeners = addListeners(this._server, {
            listening: this.emit.bind(this, "listening"),
            error: this.emit.bind(this, "error"),
            upgrade: (req, socket, head) => {
              this.handleUpgrade(req, socket, head, emitConnection);
            }
          });
        }
        if (options.perMessageDeflate === true) options.perMessageDeflate = {};
        if (options.clientTracking) {
          this.clients = /* @__PURE__ */ new Set();
          this._shouldEmitClose = false;
        }
        this.options = options;
        this._state = RUNNING;
      }
      /**
       * Returns the bound address, the address family name, and port of the server
       * as reported by the operating system if listening on an IP socket.
       * If the server is listening on a pipe or UNIX domain socket, the name is
       * returned as a string.
       *
       * @return {(Object|String|null)} The address of the server
       * @public
       */
      address() {
        if (this.options.noServer) {
          throw new Error('The server is operating in "noServer" mode');
        }
        if (!this._server) return null;
        return this._server.address();
      }
      /**
       * Stop the server from accepting new connections and emit the `'close'` event
       * when all existing connections are closed.
       *
       * @param {Function} [cb] A one-time listener for the `'close'` event
       * @public
       */
      close(cb) {
        if (this._state === CLOSED) {
          if (cb) {
            this.once("close", () => {
              cb(new Error("The server is not running"));
            });
          }
          process.nextTick(emitClose, this);
          return;
        }
        if (cb) this.once("close", cb);
        if (this._state === CLOSING) return;
        this._state = CLOSING;
        if (this.options.noServer || this.options.server) {
          if (this._server) {
            this._removeListeners();
            this._removeListeners = this._server = null;
          }
          if (this.clients) {
            if (!this.clients.size) {
              process.nextTick(emitClose, this);
            } else {
              this._shouldEmitClose = true;
            }
          } else {
            process.nextTick(emitClose, this);
          }
        } else {
          const server2 = this._server;
          this._removeListeners();
          this._removeListeners = this._server = null;
          server2.close(() => {
            emitClose(this);
          });
        }
      }
      /**
       * See if a given request should be handled by this server instance.
       *
       * @param {http.IncomingMessage} req Request object to inspect
       * @return {Boolean} `true` if the request is valid, else `false`
       * @public
       */
      shouldHandle(req) {
        if (this.options.path) {
          const index = req.url.indexOf("?");
          const pathname = index !== -1 ? req.url.slice(0, index) : req.url;
          if (pathname !== this.options.path) return false;
        }
        return true;
      }
      /**
       * Handle a HTTP Upgrade request.
       *
       * @param {http.IncomingMessage} req The request object
       * @param {Duplex} socket The network socket between the server and client
       * @param {Buffer} head The first packet of the upgraded stream
       * @param {Function} cb Callback
       * @public
       */
      handleUpgrade(req, socket, head, cb) {
        socket.on("error", socketOnError);
        const key = req.headers["sec-websocket-key"];
        const upgrade = req.headers.upgrade;
        const version = +req.headers["sec-websocket-version"];
        if (req.method !== "GET") {
          const message = "Invalid HTTP method";
          abortHandshakeOrEmitwsClientError(this, req, socket, 405, message);
          return;
        }
        if (upgrade === void 0 || upgrade.toLowerCase() !== "websocket") {
          const message = "Invalid Upgrade header";
          abortHandshakeOrEmitwsClientError(this, req, socket, 400, message);
          return;
        }
        if (key === void 0 || !keyRegex.test(key)) {
          const message = "Missing or invalid Sec-WebSocket-Key header";
          abortHandshakeOrEmitwsClientError(this, req, socket, 400, message);
          return;
        }
        if (version !== 13 && version !== 8) {
          const message = "Missing or invalid Sec-WebSocket-Version header";
          abortHandshakeOrEmitwsClientError(this, req, socket, 400, message, {
            "Sec-WebSocket-Version": "13, 8"
          });
          return;
        }
        if (!this.shouldHandle(req)) {
          abortHandshake(socket, 400);
          return;
        }
        const secWebSocketProtocol = req.headers["sec-websocket-protocol"];
        let protocols = /* @__PURE__ */ new Set();
        if (secWebSocketProtocol !== void 0) {
          try {
            protocols = subprotocol.parse(secWebSocketProtocol);
          } catch (err) {
            const message = "Invalid Sec-WebSocket-Protocol header";
            abortHandshakeOrEmitwsClientError(this, req, socket, 400, message);
            return;
          }
        }
        const secWebSocketExtensions = req.headers["sec-websocket-extensions"];
        const extensions = {};
        if (this.options.perMessageDeflate && secWebSocketExtensions !== void 0) {
          const perMessageDeflate = new PerMessageDeflate(
            this.options.perMessageDeflate,
            true,
            this.options.maxPayload
          );
          try {
            const offers = extension.parse(secWebSocketExtensions);
            if (offers[PerMessageDeflate.extensionName]) {
              perMessageDeflate.accept(offers[PerMessageDeflate.extensionName]);
              extensions[PerMessageDeflate.extensionName] = perMessageDeflate;
            }
          } catch (err) {
            const message = "Invalid or unacceptable Sec-WebSocket-Extensions header";
            abortHandshakeOrEmitwsClientError(this, req, socket, 400, message);
            return;
          }
        }
        if (this.options.verifyClient) {
          const info = {
            origin: req.headers[`${version === 8 ? "sec-websocket-origin" : "origin"}`],
            secure: !!(req.socket.authorized || req.socket.encrypted),
            req
          };
          if (this.options.verifyClient.length === 2) {
            this.options.verifyClient(info, (verified, code, message, headers) => {
              if (!verified) {
                return abortHandshake(socket, code || 401, message, headers);
              }
              this.completeUpgrade(
                extensions,
                key,
                protocols,
                req,
                socket,
                head,
                cb
              );
            });
            return;
          }
          if (!this.options.verifyClient(info)) return abortHandshake(socket, 401);
        }
        this.completeUpgrade(extensions, key, protocols, req, socket, head, cb);
      }
      /**
       * Upgrade the connection to WebSocket.
       *
       * @param {Object} extensions The accepted extensions
       * @param {String} key The value of the `Sec-WebSocket-Key` header
       * @param {Set} protocols The subprotocols
       * @param {http.IncomingMessage} req The request object
       * @param {Duplex} socket The network socket between the server and client
       * @param {Buffer} head The first packet of the upgraded stream
       * @param {Function} cb Callback
       * @throws {Error} If called more than once with the same socket
       * @private
       */
      completeUpgrade(extensions, key, protocols, req, socket, head, cb) {
        if (!socket.readable || !socket.writable) return socket.destroy();
        if (socket[kWebSocket]) {
          throw new Error(
            "server.handleUpgrade() was called more than once with the same socket, possibly due to a misconfiguration"
          );
        }
        if (this._state > RUNNING) return abortHandshake(socket, 503);
        const digest = createHash("sha1").update(key + GUID).digest("base64");
        const headers = [
          "HTTP/1.1 101 Switching Protocols",
          "Upgrade: websocket",
          "Connection: Upgrade",
          `Sec-WebSocket-Accept: ${digest}`
        ];
        const ws = new this.options.WebSocket(null, void 0, this.options);
        if (protocols.size) {
          const protocol = this.options.handleProtocols ? this.options.handleProtocols(protocols, req) : protocols.values().next().value;
          if (protocol) {
            headers.push(`Sec-WebSocket-Protocol: ${protocol}`);
            ws._protocol = protocol;
          }
        }
        if (extensions[PerMessageDeflate.extensionName]) {
          const params = extensions[PerMessageDeflate.extensionName].params;
          const value = extension.format({
            [PerMessageDeflate.extensionName]: [params]
          });
          headers.push(`Sec-WebSocket-Extensions: ${value}`);
          ws._extensions = extensions;
        }
        this.emit("headers", headers, req);
        socket.write(headers.concat("\r\n").join("\r\n"));
        socket.removeListener("error", socketOnError);
        ws.setSocket(socket, head, {
          allowSynchronousEvents: this.options.allowSynchronousEvents,
          maxPayload: this.options.maxPayload,
          skipUTF8Validation: this.options.skipUTF8Validation
        });
        if (this.clients) {
          this.clients.add(ws);
          ws.on("close", () => {
            this.clients.delete(ws);
            if (this._shouldEmitClose && !this.clients.size) {
              process.nextTick(emitClose, this);
            }
          });
        }
        cb(ws, req);
      }
    };
    module2.exports = WebSocketServer2;
    function addListeners(server2, map) {
      for (const event of Object.keys(map)) server2.on(event, map[event]);
      return function removeListeners() {
        for (const event of Object.keys(map)) {
          server2.removeListener(event, map[event]);
        }
      };
    }
    function emitClose(server2) {
      server2._state = CLOSED;
      server2.emit("close");
    }
    function socketOnError() {
      this.destroy();
    }
    function abortHandshake(socket, code, message, headers) {
      message = message || http2.STATUS_CODES[code];
      headers = {
        Connection: "close",
        "Content-Type": "text/html",
        "Content-Length": Buffer.byteLength(message),
        ...headers
      };
      socket.once("finish", socket.destroy);
      socket.end(
        `HTTP/1.1 ${code} ${http2.STATUS_CODES[code]}\r
` + Object.keys(headers).map((h) => `${h}: ${headers[h]}`).join("\r\n") + "\r\n\r\n" + message
      );
    }
    function abortHandshakeOrEmitwsClientError(server2, req, socket, code, message, headers) {
      if (server2.listenerCount("wsClientError")) {
        const err = new Error(message);
        Error.captureStackTrace(err, abortHandshakeOrEmitwsClientError);
        server2.emit("wsClientError", err, socket, req);
      } else {
        abortHandshake(socket, code, message, headers);
      }
    }
  }
});

// node_modules/async/dist/async.js
var require_async = __commonJS({
  "node_modules/async/dist/async.js"(exports2, module2) {
    (function(global, factory) {
      typeof exports2 === "object" && typeof module2 !== "undefined" ? factory(exports2) : typeof define === "function" && define.amd ? define(["exports"], factory) : (global = typeof globalThis !== "undefined" ? globalThis : global || self, factory(global.async = {}));
    })(exports2, function(exports3) {
      "use strict";
      function apply(fn, ...args) {
        return (...callArgs) => fn(...args, ...callArgs);
      }
      function initialParams(fn) {
        return function(...args) {
          var callback = args.pop();
          return fn.call(this, args, callback);
        };
      }
      var hasQueueMicrotask = typeof queueMicrotask === "function" && queueMicrotask;
      var hasSetImmediate = typeof setImmediate === "function" && setImmediate;
      var hasNextTick = typeof process === "object" && typeof process.nextTick === "function";
      function fallback(fn) {
        setTimeout(fn, 0);
      }
      function wrap(defer) {
        return (fn, ...args) => defer(() => fn(...args));
      }
      var _defer$1;
      if (hasQueueMicrotask) {
        _defer$1 = queueMicrotask;
      } else if (hasSetImmediate) {
        _defer$1 = setImmediate;
      } else if (hasNextTick) {
        _defer$1 = process.nextTick;
      } else {
        _defer$1 = fallback;
      }
      var setImmediate$1 = wrap(_defer$1);
      function asyncify(func) {
        if (isAsync(func)) {
          return function(...args) {
            const callback = args.pop();
            const promise = func.apply(this, args);
            return handlePromise(promise, callback);
          };
        }
        return initialParams(function(args, callback) {
          var result2;
          try {
            result2 = func.apply(this, args);
          } catch (e) {
            return callback(e);
          }
          if (result2 && typeof result2.then === "function") {
            return handlePromise(result2, callback);
          } else {
            callback(null, result2);
          }
        });
      }
      function handlePromise(promise, callback) {
        return promise.then((value) => {
          invokeCallback(callback, null, value);
        }, (err) => {
          invokeCallback(callback, err && (err instanceof Error || err.message) ? err : new Error(err));
        });
      }
      function invokeCallback(callback, error, value) {
        try {
          callback(error, value);
        } catch (err) {
          setImmediate$1((e) => {
            throw e;
          }, err);
        }
      }
      function isAsync(fn) {
        return fn[Symbol.toStringTag] === "AsyncFunction";
      }
      function isAsyncGenerator(fn) {
        return fn[Symbol.toStringTag] === "AsyncGenerator";
      }
      function isAsyncIterable(obj) {
        return typeof obj[Symbol.asyncIterator] === "function";
      }
      function wrapAsync(asyncFn) {
        if (typeof asyncFn !== "function") throw new Error("expected a function");
        return isAsync(asyncFn) ? asyncify(asyncFn) : asyncFn;
      }
      function awaitify(asyncFn, arity) {
        if (!arity) arity = asyncFn.length;
        if (!arity) throw new Error("arity is undefined");
        function awaitable(...args) {
          if (typeof args[arity - 1] === "function") {
            return asyncFn.apply(this, args);
          }
          return new Promise((resolve, reject2) => {
            args[arity - 1] = (err, ...cbArgs) => {
              if (err) return reject2(err);
              resolve(cbArgs.length > 1 ? cbArgs : cbArgs[0]);
            };
            asyncFn.apply(this, args);
          });
        }
        return awaitable;
      }
      function applyEach$1(eachfn) {
        return function applyEach2(fns, ...callArgs) {
          const go = awaitify(function(callback) {
            var that = this;
            return eachfn(fns, (fn, cb) => {
              wrapAsync(fn).apply(that, callArgs.concat(cb));
            }, callback);
          });
          return go;
        };
      }
      function _asyncMap(eachfn, arr, iteratee, callback) {
        arr = arr || [];
        var results = [];
        var counter = 0;
        var _iteratee = wrapAsync(iteratee);
        return eachfn(arr, (value, _, iterCb) => {
          var index2 = counter++;
          _iteratee(value, (err, v) => {
            results[index2] = v;
            iterCb(err);
          });
        }, (err) => {
          callback(err, results);
        });
      }
      function isArrayLike(value) {
        return value && typeof value.length === "number" && value.length >= 0 && value.length % 1 === 0;
      }
      const breakLoop = {};
      function once(fn) {
        function wrapper(...args) {
          if (fn === null) return;
          var callFn = fn;
          fn = null;
          callFn.apply(this, args);
        }
        Object.assign(wrapper, fn);
        return wrapper;
      }
      function getIterator(coll) {
        return coll[Symbol.iterator] && coll[Symbol.iterator]();
      }
      function createArrayIterator(coll) {
        var i = -1;
        var len = coll.length;
        return function next() {
          return ++i < len ? { value: coll[i], key: i } : null;
        };
      }
      function createES2015Iterator(iterator) {
        var i = -1;
        return function next() {
          var item = iterator.next();
          if (item.done)
            return null;
          i++;
          return { value: item.value, key: i };
        };
      }
      function createObjectIterator(obj) {
        var okeys = obj ? Object.keys(obj) : [];
        var i = -1;
        var len = okeys.length;
        return function next() {
          var key = okeys[++i];
          if (key === "__proto__") {
            return next();
          }
          return i < len ? { value: obj[key], key } : null;
        };
      }
      function createIterator(coll) {
        if (isArrayLike(coll)) {
          return createArrayIterator(coll);
        }
        var iterator = getIterator(coll);
        return iterator ? createES2015Iterator(iterator) : createObjectIterator(coll);
      }
      function onlyOnce(fn) {
        return function(...args) {
          if (fn === null) throw new Error("Callback was already called.");
          var callFn = fn;
          fn = null;
          callFn.apply(this, args);
        };
      }
      function asyncEachOfLimit(generator, limit, iteratee, callback) {
        let done = false;
        let canceled = false;
        let awaiting = false;
        let running = 0;
        let idx = 0;
        function replenish() {
          if (running >= limit || awaiting || done) return;
          awaiting = true;
          generator.next().then(({ value, done: iterDone }) => {
            if (canceled || done) return;
            awaiting = false;
            if (iterDone) {
              done = true;
              if (running <= 0) {
                callback(null);
              }
              return;
            }
            running++;
            iteratee(value, idx, iterateeCallback);
            idx++;
            replenish();
          }).catch(handleError);
        }
        function iterateeCallback(err, result2) {
          running -= 1;
          if (canceled) return;
          if (err) return handleError(err);
          if (err === false) {
            done = true;
            canceled = true;
            return;
          }
          if (result2 === breakLoop || done && running <= 0) {
            done = true;
            return callback(null);
          }
          replenish();
        }
        function handleError(err) {
          if (canceled) return;
          awaiting = false;
          done = true;
          callback(err);
        }
        replenish();
      }
      var eachOfLimit$2 = (limit) => {
        return (obj, iteratee, callback) => {
          callback = once(callback);
          if (limit <= 0) {
            throw new RangeError("concurrency limit cannot be less than 1");
          }
          if (!obj) {
            return callback(null);
          }
          if (isAsyncGenerator(obj)) {
            return asyncEachOfLimit(obj, limit, iteratee, callback);
          }
          if (isAsyncIterable(obj)) {
            return asyncEachOfLimit(obj[Symbol.asyncIterator](), limit, iteratee, callback);
          }
          var nextElem = createIterator(obj);
          var done = false;
          var canceled = false;
          var running = 0;
          var looping = false;
          function iterateeCallback(err, value) {
            if (canceled) return;
            running -= 1;
            if (err) {
              done = true;
              callback(err);
            } else if (err === false) {
              done = true;
              canceled = true;
            } else if (value === breakLoop || done && running <= 0) {
              done = true;
              return callback(null);
            } else if (!looping) {
              replenish();
            }
          }
          function replenish() {
            looping = true;
            while (running < limit && !done) {
              var elem = nextElem();
              if (elem === null) {
                done = true;
                if (running <= 0) {
                  callback(null);
                }
                return;
              }
              running += 1;
              iteratee(elem.value, elem.key, onlyOnce(iterateeCallback));
            }
            looping = false;
          }
          replenish();
        };
      };
      function eachOfLimit(coll, limit, iteratee, callback) {
        return eachOfLimit$2(limit)(coll, wrapAsync(iteratee), callback);
      }
      var eachOfLimit$1 = awaitify(eachOfLimit, 4);
      function eachOfArrayLike(coll, iteratee, callback) {
        callback = once(callback);
        var index2 = 0, completed = 0, { length } = coll, canceled = false;
        if (length === 0) {
          callback(null);
        }
        function iteratorCallback(err, value) {
          if (err === false) {
            canceled = true;
          }
          if (canceled === true) return;
          if (err) {
            callback(err);
          } else if (++completed === length || value === breakLoop) {
            callback(null);
          }
        }
        for (; index2 < length; index2++) {
          iteratee(coll[index2], index2, onlyOnce(iteratorCallback));
        }
      }
      function eachOfGeneric(coll, iteratee, callback) {
        return eachOfLimit$1(coll, Infinity, iteratee, callback);
      }
      function eachOf(coll, iteratee, callback) {
        var eachOfImplementation = isArrayLike(coll) ? eachOfArrayLike : eachOfGeneric;
        return eachOfImplementation(coll, wrapAsync(iteratee), callback);
      }
      var eachOf$1 = awaitify(eachOf, 3);
      function map(coll, iteratee, callback) {
        return _asyncMap(eachOf$1, coll, iteratee, callback);
      }
      var map$1 = awaitify(map, 3);
      var applyEach = applyEach$1(map$1);
      function eachOfSeries(coll, iteratee, callback) {
        return eachOfLimit$1(coll, 1, iteratee, callback);
      }
      var eachOfSeries$1 = awaitify(eachOfSeries, 3);
      function mapSeries(coll, iteratee, callback) {
        return _asyncMap(eachOfSeries$1, coll, iteratee, callback);
      }
      var mapSeries$1 = awaitify(mapSeries, 3);
      var applyEachSeries = applyEach$1(mapSeries$1);
      const PROMISE_SYMBOL = Symbol("promiseCallback");
      function promiseCallback() {
        let resolve, reject2;
        function callback(err, ...args) {
          if (err) return reject2(err);
          resolve(args.length > 1 ? args : args[0]);
        }
        callback[PROMISE_SYMBOL] = new Promise((res, rej) => {
          resolve = res, reject2 = rej;
        });
        return callback;
      }
      function auto(tasks, concurrency, callback) {
        if (typeof concurrency !== "number") {
          callback = concurrency;
          concurrency = null;
        }
        callback = once(callback || promiseCallback());
        var numTasks = Object.keys(tasks).length;
        if (!numTasks) {
          return callback(null);
        }
        if (!concurrency) {
          concurrency = numTasks;
        }
        var results = {};
        var runningTasks = 0;
        var canceled = false;
        var hasError = false;
        var listeners = /* @__PURE__ */ Object.create(null);
        var readyTasks = [];
        var readyToCheck = [];
        var uncheckedDependencies = {};
        Object.keys(tasks).forEach((key) => {
          var task = tasks[key];
          if (!Array.isArray(task)) {
            enqueueTask(key, [task]);
            readyToCheck.push(key);
            return;
          }
          var dependencies = task.slice(0, task.length - 1);
          var remainingDependencies = dependencies.length;
          if (remainingDependencies === 0) {
            enqueueTask(key, task);
            readyToCheck.push(key);
            return;
          }
          uncheckedDependencies[key] = remainingDependencies;
          dependencies.forEach((dependencyName) => {
            if (!tasks[dependencyName]) {
              throw new Error("async.auto task `" + key + "` has a non-existent dependency `" + dependencyName + "` in " + dependencies.join(", "));
            }
            addListener(dependencyName, () => {
              remainingDependencies--;
              if (remainingDependencies === 0) {
                enqueueTask(key, task);
              }
            });
          });
        });
        checkForDeadlocks();
        processQueue();
        function enqueueTask(key, task) {
          readyTasks.push(() => runTask(key, task));
        }
        function processQueue() {
          if (canceled) return;
          if (readyTasks.length === 0 && runningTasks === 0) {
            return callback(null, results);
          }
          while (readyTasks.length && runningTasks < concurrency) {
            var run = readyTasks.shift();
            run();
          }
        }
        function addListener(taskName, fn) {
          var taskListeners = listeners[taskName];
          if (!taskListeners) {
            taskListeners = listeners[taskName] = [];
          }
          taskListeners.push(fn);
        }
        function taskComplete(taskName) {
          var taskListeners = listeners[taskName] || [];
          taskListeners.forEach((fn) => fn());
          processQueue();
        }
        function runTask(key, task) {
          if (hasError) return;
          var taskCallback = onlyOnce((err, ...result2) => {
            runningTasks--;
            if (err === false) {
              canceled = true;
              return;
            }
            if (result2.length < 2) {
              [result2] = result2;
            }
            if (err) {
              var safeResults = {};
              Object.keys(results).forEach((rkey) => {
                safeResults[rkey] = results[rkey];
              });
              safeResults[key] = result2;
              hasError = true;
              listeners = /* @__PURE__ */ Object.create(null);
              if (canceled) return;
              callback(err, safeResults);
            } else {
              results[key] = result2;
              taskComplete(key);
            }
          });
          runningTasks++;
          var taskFn = wrapAsync(task[task.length - 1]);
          if (task.length > 1) {
            taskFn(results, taskCallback);
          } else {
            taskFn(taskCallback);
          }
        }
        function checkForDeadlocks() {
          var currentTask;
          var counter = 0;
          while (readyToCheck.length) {
            currentTask = readyToCheck.pop();
            counter++;
            getDependents(currentTask).forEach((dependent) => {
              if (--uncheckedDependencies[dependent] === 0) {
                readyToCheck.push(dependent);
              }
            });
          }
          if (counter !== numTasks) {
            throw new Error(
              "async.auto cannot execute tasks due to a recursive dependency"
            );
          }
        }
        function getDependents(taskName) {
          var result2 = [];
          Object.keys(tasks).forEach((key) => {
            const task = tasks[key];
            if (Array.isArray(task) && task.indexOf(taskName) >= 0) {
              result2.push(key);
            }
          });
          return result2;
        }
        return callback[PROMISE_SYMBOL];
      }
      var FN_ARGS = /^(?:async\s)?(?:function)?\s*(?:\w+\s*)?\(([^)]+)\)(?:\s*{)/;
      var ARROW_FN_ARGS = /^(?:async\s)?\s*(?:\(\s*)?((?:[^)=\s]\s*)*)(?:\)\s*)?=>/;
      var FN_ARG_SPLIT = /,/;
      var FN_ARG = /(=.+)?(\s*)$/;
      function stripComments(string) {
        let stripped = "";
        let index2 = 0;
        let endBlockComment = string.indexOf("*/");
        while (index2 < string.length) {
          if (string[index2] === "/" && string[index2 + 1] === "/") {
            let endIndex = string.indexOf("\n", index2);
            index2 = endIndex === -1 ? string.length : endIndex;
          } else if (endBlockComment !== -1 && string[index2] === "/" && string[index2 + 1] === "*") {
            let endIndex = string.indexOf("*/", index2);
            if (endIndex !== -1) {
              index2 = endIndex + 2;
              endBlockComment = string.indexOf("*/", index2);
            } else {
              stripped += string[index2];
              index2++;
            }
          } else {
            stripped += string[index2];
            index2++;
          }
        }
        return stripped;
      }
      function parseParams(func) {
        const src = stripComments(func.toString());
        let match = src.match(FN_ARGS);
        if (!match) {
          match = src.match(ARROW_FN_ARGS);
        }
        if (!match) throw new Error("could not parse args in autoInject\nSource:\n" + src);
        let [, args] = match;
        return args.replace(/\s/g, "").split(FN_ARG_SPLIT).map((arg) => arg.replace(FN_ARG, "").trim());
      }
      function autoInject(tasks, callback) {
        var newTasks = {};
        Object.keys(tasks).forEach((key) => {
          var taskFn = tasks[key];
          var params;
          var fnIsAsync = isAsync(taskFn);
          var hasNoDeps = !fnIsAsync && taskFn.length === 1 || fnIsAsync && taskFn.length === 0;
          if (Array.isArray(taskFn)) {
            params = [...taskFn];
            taskFn = params.pop();
            newTasks[key] = params.concat(params.length > 0 ? newTask : taskFn);
          } else if (hasNoDeps) {
            newTasks[key] = taskFn;
          } else {
            params = parseParams(taskFn);
            if (taskFn.length === 0 && !fnIsAsync && params.length === 0) {
              throw new Error("autoInject task functions require explicit parameters.");
            }
            if (!fnIsAsync) params.pop();
            newTasks[key] = params.concat(newTask);
          }
          function newTask(results, taskCb) {
            var newArgs = params.map((name) => results[name]);
            newArgs.push(taskCb);
            wrapAsync(taskFn)(...newArgs);
          }
        });
        return auto(newTasks, callback);
      }
      class DLL {
        constructor() {
          this.head = this.tail = null;
          this.length = 0;
        }
        removeLink(node) {
          if (node.prev) node.prev.next = node.next;
          else this.head = node.next;
          if (node.next) node.next.prev = node.prev;
          else this.tail = node.prev;
          node.prev = node.next = null;
          this.length -= 1;
          return node;
        }
        empty() {
          while (this.head) this.shift();
          return this;
        }
        insertAfter(node, newNode) {
          newNode.prev = node;
          newNode.next = node.next;
          if (node.next) node.next.prev = newNode;
          else this.tail = newNode;
          node.next = newNode;
          this.length += 1;
        }
        insertBefore(node, newNode) {
          newNode.prev = node.prev;
          newNode.next = node;
          if (node.prev) node.prev.next = newNode;
          else this.head = newNode;
          node.prev = newNode;
          this.length += 1;
        }
        unshift(node) {
          if (this.head) this.insertBefore(this.head, node);
          else setInitial(this, node);
        }
        push(node) {
          if (this.tail) this.insertAfter(this.tail, node);
          else setInitial(this, node);
        }
        shift() {
          return this.head && this.removeLink(this.head);
        }
        pop() {
          return this.tail && this.removeLink(this.tail);
        }
        toArray() {
          return [...this];
        }
        *[Symbol.iterator]() {
          var cur = this.head;
          while (cur) {
            yield cur.data;
            cur = cur.next;
          }
        }
        remove(testFn) {
          var curr = this.head;
          while (curr) {
            var { next } = curr;
            if (testFn(curr)) {
              this.removeLink(curr);
            }
            curr = next;
          }
          return this;
        }
      }
      function setInitial(dll, node) {
        dll.length = 1;
        dll.head = dll.tail = node;
      }
      function queue$1(worker, concurrency, payload) {
        if (concurrency == null) {
          concurrency = 1;
        } else if (concurrency === 0) {
          throw new RangeError("Concurrency must not be zero");
        }
        var _worker = wrapAsync(worker);
        var numRunning = 0;
        var workersList = [];
        const events = {
          error: [],
          drain: [],
          saturated: [],
          unsaturated: [],
          empty: []
        };
        function on(event, handler) {
          events[event].push(handler);
        }
        function once2(event, handler) {
          const handleAndRemove = (...args) => {
            off(event, handleAndRemove);
            handler(...args);
          };
          events[event].push(handleAndRemove);
        }
        function off(event, handler) {
          if (!event) return Object.keys(events).forEach((ev) => events[ev] = []);
          if (!handler) return events[event] = [];
          events[event] = events[event].filter((ev) => ev !== handler);
        }
        function trigger(event, ...args) {
          events[event].forEach((handler) => handler(...args));
        }
        var processingScheduled = false;
        function _insert(data, insertAtFront, rejectOnError, callback) {
          if (callback != null && typeof callback !== "function") {
            throw new Error("task callback must be a function");
          }
          q.started = true;
          var res, rej;
          function promiseCallback2(err, ...args) {
            if (err) return rejectOnError ? rej(err) : res();
            if (args.length <= 1) return res(args[0]);
            res(args);
          }
          var item = q._createTaskItem(
            data,
            rejectOnError ? promiseCallback2 : callback || promiseCallback2
          );
          if (insertAtFront) {
            q._tasks.unshift(item);
          } else {
            q._tasks.push(item);
          }
          if (!processingScheduled) {
            processingScheduled = true;
            setImmediate$1(() => {
              processingScheduled = false;
              q.process();
            });
          }
          if (rejectOnError || !callback) {
            return new Promise((resolve, reject2) => {
              res = resolve;
              rej = reject2;
            });
          }
        }
        function _createCB(tasks) {
          return function(err, ...args) {
            numRunning -= 1;
            for (var i = 0, l = tasks.length; i < l; i++) {
              var task = tasks[i];
              var index2 = workersList.indexOf(task);
              if (index2 === 0) {
                workersList.shift();
              } else if (index2 > 0) {
                workersList.splice(index2, 1);
              }
              task.callback(err, ...args);
              if (err != null) {
                trigger("error", err, task.data);
              }
            }
            if (numRunning <= q.concurrency - q.buffer) {
              trigger("unsaturated");
            }
            if (q.idle()) {
              trigger("drain");
            }
            q.process();
          };
        }
        function _maybeDrain(data) {
          if (data.length === 0 && q.idle()) {
            setImmediate$1(() => trigger("drain"));
            return true;
          }
          return false;
        }
        const eventMethod = (name) => (handler) => {
          if (!handler) {
            return new Promise((resolve, reject2) => {
              once2(name, (err, data) => {
                if (err) return reject2(err);
                resolve(data);
              });
            });
          }
          off(name);
          on(name, handler);
        };
        var isProcessing = false;
        var q = {
          _tasks: new DLL(),
          _createTaskItem(data, callback) {
            return {
              data,
              callback
            };
          },
          *[Symbol.iterator]() {
            yield* q._tasks[Symbol.iterator]();
          },
          concurrency,
          payload,
          buffer: concurrency / 4,
          started: false,
          paused: false,
          push(data, callback) {
            if (Array.isArray(data)) {
              if (_maybeDrain(data)) return;
              return data.map((datum) => _insert(datum, false, false, callback));
            }
            return _insert(data, false, false, callback);
          },
          pushAsync(data, callback) {
            if (Array.isArray(data)) {
              if (_maybeDrain(data)) return;
              return data.map((datum) => _insert(datum, false, true, callback));
            }
            return _insert(data, false, true, callback);
          },
          kill() {
            off();
            q._tasks.empty();
          },
          unshift(data, callback) {
            if (Array.isArray(data)) {
              if (_maybeDrain(data)) return;
              return data.map((datum) => _insert(datum, true, false, callback));
            }
            return _insert(data, true, false, callback);
          },
          unshiftAsync(data, callback) {
            if (Array.isArray(data)) {
              if (_maybeDrain(data)) return;
              return data.map((datum) => _insert(datum, true, true, callback));
            }
            return _insert(data, true, true, callback);
          },
          remove(testFn) {
            q._tasks.remove(testFn);
          },
          process() {
            if (isProcessing) {
              return;
            }
            isProcessing = true;
            while (!q.paused && numRunning < q.concurrency && q._tasks.length) {
              var tasks = [], data = [];
              var l = q._tasks.length;
              if (q.payload) l = Math.min(l, q.payload);
              for (var i = 0; i < l; i++) {
                var node = q._tasks.shift();
                tasks.push(node);
                workersList.push(node);
                data.push(node.data);
              }
              numRunning += 1;
              if (q._tasks.length === 0) {
                trigger("empty");
              }
              if (numRunning === q.concurrency) {
                trigger("saturated");
              }
              var cb = onlyOnce(_createCB(tasks));
              _worker(data, cb);
            }
            isProcessing = false;
          },
          length() {
            return q._tasks.length;
          },
          running() {
            return numRunning;
          },
          workersList() {
            return workersList;
          },
          idle() {
            return q._tasks.length + numRunning === 0;
          },
          pause() {
            q.paused = true;
          },
          resume() {
            if (q.paused === false) {
              return;
            }
            q.paused = false;
            setImmediate$1(q.process);
          }
        };
        Object.defineProperties(q, {
          saturated: {
            writable: false,
            value: eventMethod("saturated")
          },
          unsaturated: {
            writable: false,
            value: eventMethod("unsaturated")
          },
          empty: {
            writable: false,
            value: eventMethod("empty")
          },
          drain: {
            writable: false,
            value: eventMethod("drain")
          },
          error: {
            writable: false,
            value: eventMethod("error")
          }
        });
        return q;
      }
      function cargo$1(worker, payload) {
        return queue$1(worker, 1, payload);
      }
      function cargo(worker, concurrency, payload) {
        return queue$1(worker, concurrency, payload);
      }
      function reduce(coll, memo, iteratee, callback) {
        callback = once(callback);
        var _iteratee = wrapAsync(iteratee);
        return eachOfSeries$1(coll, (x, i, iterCb) => {
          _iteratee(memo, x, (err, v) => {
            memo = v;
            iterCb(err);
          });
        }, (err) => callback(err, memo));
      }
      var reduce$1 = awaitify(reduce, 4);
      function seq(...functions) {
        var _functions = functions.map(wrapAsync);
        return function(...args) {
          var that = this;
          var cb = args[args.length - 1];
          if (typeof cb == "function") {
            args.pop();
          } else {
            cb = promiseCallback();
          }
          reduce$1(
            _functions,
            args,
            (newargs, fn, iterCb) => {
              fn.apply(that, newargs.concat((err, ...nextargs) => {
                iterCb(err, nextargs);
              }));
            },
            (err, results) => cb(err, ...results)
          );
          return cb[PROMISE_SYMBOL];
        };
      }
      function compose(...args) {
        return seq(...args.reverse());
      }
      function mapLimit(coll, limit, iteratee, callback) {
        return _asyncMap(eachOfLimit$2(limit), coll, iteratee, callback);
      }
      var mapLimit$1 = awaitify(mapLimit, 4);
      function concatLimit(coll, limit, iteratee, callback) {
        var _iteratee = wrapAsync(iteratee);
        return mapLimit$1(coll, limit, (val, iterCb) => {
          _iteratee(val, (err, ...args) => {
            if (err) return iterCb(err);
            return iterCb(err, args);
          });
        }, (err, mapResults) => {
          var result2 = [];
          for (var i = 0; i < mapResults.length; i++) {
            if (mapResults[i]) {
              result2 = result2.concat(...mapResults[i]);
            }
          }
          return callback(err, result2);
        });
      }
      var concatLimit$1 = awaitify(concatLimit, 4);
      function concat(coll, iteratee, callback) {
        return concatLimit$1(coll, Infinity, iteratee, callback);
      }
      var concat$1 = awaitify(concat, 3);
      function concatSeries(coll, iteratee, callback) {
        return concatLimit$1(coll, 1, iteratee, callback);
      }
      var concatSeries$1 = awaitify(concatSeries, 3);
      function constant$1(...args) {
        return function(...ignoredArgs) {
          var callback = ignoredArgs.pop();
          return callback(null, ...args);
        };
      }
      function _createTester(check, getResult) {
        return (eachfn, arr, _iteratee, cb) => {
          var testPassed = false;
          var testResult;
          const iteratee = wrapAsync(_iteratee);
          eachfn(arr, (value, _, callback) => {
            iteratee(value, (err, result2) => {
              if (err || err === false) return callback(err);
              if (check(result2) && !testResult) {
                testPassed = true;
                testResult = getResult(true, value);
                return callback(null, breakLoop);
              }
              callback();
            });
          }, (err) => {
            if (err) return cb(err);
            cb(null, testPassed ? testResult : getResult(false));
          });
        };
      }
      function detect(coll, iteratee, callback) {
        return _createTester((bool) => bool, (res, item) => item)(eachOf$1, coll, iteratee, callback);
      }
      var detect$1 = awaitify(detect, 3);
      function detectLimit(coll, limit, iteratee, callback) {
        return _createTester((bool) => bool, (res, item) => item)(eachOfLimit$2(limit), coll, iteratee, callback);
      }
      var detectLimit$1 = awaitify(detectLimit, 4);
      function detectSeries(coll, iteratee, callback) {
        return _createTester((bool) => bool, (res, item) => item)(eachOfLimit$2(1), coll, iteratee, callback);
      }
      var detectSeries$1 = awaitify(detectSeries, 3);
      function consoleFunc(name) {
        return (fn, ...args) => wrapAsync(fn)(...args, (err, ...resultArgs) => {
          if (typeof console === "object") {
            if (err) {
              if (console.error) {
                console.error(err);
              }
            } else if (console[name]) {
              resultArgs.forEach((x) => console[name](x));
            }
          }
        });
      }
      var dir = consoleFunc("dir");
      function doWhilst(iteratee, test, callback) {
        callback = onlyOnce(callback);
        var _fn = wrapAsync(iteratee);
        var _test = wrapAsync(test);
        var results;
        function next(err, ...args) {
          if (err) return callback(err);
          if (err === false) return;
          results = args;
          _test(...args, check);
        }
        function check(err, truth) {
          if (err) return callback(err);
          if (err === false) return;
          if (!truth) return callback(null, ...results);
          _fn(next);
        }
        return check(null, true);
      }
      var doWhilst$1 = awaitify(doWhilst, 3);
      function doUntil(iteratee, test, callback) {
        const _test = wrapAsync(test);
        return doWhilst$1(iteratee, (...args) => {
          const cb = args.pop();
          _test(...args, (err, truth) => cb(err, !truth));
        }, callback);
      }
      function _withoutIndex(iteratee) {
        return (value, index2, callback) => iteratee(value, callback);
      }
      function eachLimit$2(coll, iteratee, callback) {
        return eachOf$1(coll, _withoutIndex(wrapAsync(iteratee)), callback);
      }
      var each = awaitify(eachLimit$2, 3);
      function eachLimit(coll, limit, iteratee, callback) {
        return eachOfLimit$2(limit)(coll, _withoutIndex(wrapAsync(iteratee)), callback);
      }
      var eachLimit$1 = awaitify(eachLimit, 4);
      function eachSeries(coll, iteratee, callback) {
        return eachLimit$1(coll, 1, iteratee, callback);
      }
      var eachSeries$1 = awaitify(eachSeries, 3);
      function ensureAsync(fn) {
        if (isAsync(fn)) return fn;
        return function(...args) {
          var callback = args.pop();
          var sync = true;
          args.push((...innerArgs) => {
            if (sync) {
              setImmediate$1(() => callback(...innerArgs));
            } else {
              callback(...innerArgs);
            }
          });
          fn.apply(this, args);
          sync = false;
        };
      }
      function every(coll, iteratee, callback) {
        return _createTester((bool) => !bool, (res) => !res)(eachOf$1, coll, iteratee, callback);
      }
      var every$1 = awaitify(every, 3);
      function everyLimit(coll, limit, iteratee, callback) {
        return _createTester((bool) => !bool, (res) => !res)(eachOfLimit$2(limit), coll, iteratee, callback);
      }
      var everyLimit$1 = awaitify(everyLimit, 4);
      function everySeries(coll, iteratee, callback) {
        return _createTester((bool) => !bool, (res) => !res)(eachOfSeries$1, coll, iteratee, callback);
      }
      var everySeries$1 = awaitify(everySeries, 3);
      function filterArray(eachfn, arr, iteratee, callback) {
        var truthValues = new Array(arr.length);
        eachfn(arr, (x, index2, iterCb) => {
          iteratee(x, (err, v) => {
            truthValues[index2] = !!v;
            iterCb(err);
          });
        }, (err) => {
          if (err) return callback(err);
          var results = [];
          for (var i = 0; i < arr.length; i++) {
            if (truthValues[i]) results.push(arr[i]);
          }
          callback(null, results);
        });
      }
      function filterGeneric(eachfn, coll, iteratee, callback) {
        var results = [];
        eachfn(coll, (x, index2, iterCb) => {
          iteratee(x, (err, v) => {
            if (err) return iterCb(err);
            if (v) {
              results.push({ index: index2, value: x });
            }
            iterCb(err);
          });
        }, (err) => {
          if (err) return callback(err);
          callback(null, results.sort((a, b) => a.index - b.index).map((v) => v.value));
        });
      }
      function _filter(eachfn, coll, iteratee, callback) {
        var filter2 = isArrayLike(coll) ? filterArray : filterGeneric;
        return filter2(eachfn, coll, wrapAsync(iteratee), callback);
      }
      function filter(coll, iteratee, callback) {
        return _filter(eachOf$1, coll, iteratee, callback);
      }
      var filter$1 = awaitify(filter, 3);
      function filterLimit(coll, limit, iteratee, callback) {
        return _filter(eachOfLimit$2(limit), coll, iteratee, callback);
      }
      var filterLimit$1 = awaitify(filterLimit, 4);
      function filterSeries(coll, iteratee, callback) {
        return _filter(eachOfSeries$1, coll, iteratee, callback);
      }
      var filterSeries$1 = awaitify(filterSeries, 3);
      function forever(fn, errback) {
        var done = onlyOnce(errback);
        var task = wrapAsync(ensureAsync(fn));
        function next(err) {
          if (err) return done(err);
          if (err === false) return;
          task(next);
        }
        return next();
      }
      var forever$1 = awaitify(forever, 2);
      function groupByLimit(coll, limit, iteratee, callback) {
        var _iteratee = wrapAsync(iteratee);
        return mapLimit$1(coll, limit, (val, iterCb) => {
          _iteratee(val, (err, key) => {
            if (err) return iterCb(err);
            return iterCb(err, { key, val });
          });
        }, (err, mapResults) => {
          var result2 = {};
          var { hasOwnProperty } = Object.prototype;
          for (var i = 0; i < mapResults.length; i++) {
            if (mapResults[i]) {
              var { key } = mapResults[i];
              var { val } = mapResults[i];
              if (hasOwnProperty.call(result2, key)) {
                result2[key].push(val);
              } else {
                result2[key] = [val];
              }
            }
          }
          return callback(err, result2);
        });
      }
      var groupByLimit$1 = awaitify(groupByLimit, 4);
      function groupBy(coll, iteratee, callback) {
        return groupByLimit$1(coll, Infinity, iteratee, callback);
      }
      function groupBySeries(coll, iteratee, callback) {
        return groupByLimit$1(coll, 1, iteratee, callback);
      }
      var log = consoleFunc("log");
      function mapValuesLimit(obj, limit, iteratee, callback) {
        callback = once(callback);
        var newObj = {};
        var _iteratee = wrapAsync(iteratee);
        return eachOfLimit$2(limit)(obj, (val, key, next) => {
          _iteratee(val, key, (err, result2) => {
            if (err) return next(err);
            newObj[key] = result2;
            next(err);
          });
        }, (err) => callback(err, newObj));
      }
      var mapValuesLimit$1 = awaitify(mapValuesLimit, 4);
      function mapValues(obj, iteratee, callback) {
        return mapValuesLimit$1(obj, Infinity, iteratee, callback);
      }
      function mapValuesSeries(obj, iteratee, callback) {
        return mapValuesLimit$1(obj, 1, iteratee, callback);
      }
      function memoize(fn, hasher = (v) => v) {
        var memo = /* @__PURE__ */ Object.create(null);
        var queues = /* @__PURE__ */ Object.create(null);
        var _fn = wrapAsync(fn);
        var memoized = initialParams((args, callback) => {
          var key = hasher(...args);
          if (key in memo) {
            setImmediate$1(() => callback(null, ...memo[key]));
          } else if (key in queues) {
            queues[key].push(callback);
          } else {
            queues[key] = [callback];
            _fn(...args, (err, ...resultArgs) => {
              if (!err) {
                memo[key] = resultArgs;
              }
              var q = queues[key];
              delete queues[key];
              for (var i = 0, l = q.length; i < l; i++) {
                q[i](err, ...resultArgs);
              }
            });
          }
        });
        memoized.memo = memo;
        memoized.unmemoized = fn;
        return memoized;
      }
      var _defer;
      if (hasNextTick) {
        _defer = process.nextTick;
      } else if (hasSetImmediate) {
        _defer = setImmediate;
      } else {
        _defer = fallback;
      }
      var nextTick = wrap(_defer);
      var _parallel = awaitify((eachfn, tasks, callback) => {
        var results = isArrayLike(tasks) ? [] : {};
        eachfn(tasks, (task, key, taskCb) => {
          wrapAsync(task)((err, ...result2) => {
            if (result2.length < 2) {
              [result2] = result2;
            }
            results[key] = result2;
            taskCb(err);
          });
        }, (err) => callback(err, results));
      }, 3);
      function parallel(tasks, callback) {
        return _parallel(eachOf$1, tasks, callback);
      }
      function parallelLimit(tasks, limit, callback) {
        return _parallel(eachOfLimit$2(limit), tasks, callback);
      }
      function queue(worker, concurrency) {
        var _worker = wrapAsync(worker);
        return queue$1((items, cb) => {
          _worker(items[0], cb);
        }, concurrency, 1);
      }
      class Heap {
        constructor() {
          this.heap = [];
          this.pushCount = Number.MIN_SAFE_INTEGER;
        }
        get length() {
          return this.heap.length;
        }
        empty() {
          this.heap = [];
          return this;
        }
        percUp(index2) {
          let p;
          while (index2 > 0 && smaller(this.heap[index2], this.heap[p = parent(index2)])) {
            let t = this.heap[index2];
            this.heap[index2] = this.heap[p];
            this.heap[p] = t;
            index2 = p;
          }
        }
        percDown(index2) {
          let l;
          while ((l = leftChi(index2)) < this.heap.length) {
            if (l + 1 < this.heap.length && smaller(this.heap[l + 1], this.heap[l])) {
              l = l + 1;
            }
            if (smaller(this.heap[index2], this.heap[l])) {
              break;
            }
            let t = this.heap[index2];
            this.heap[index2] = this.heap[l];
            this.heap[l] = t;
            index2 = l;
          }
        }
        push(node) {
          node.pushCount = ++this.pushCount;
          this.heap.push(node);
          this.percUp(this.heap.length - 1);
        }
        unshift(node) {
          return this.heap.push(node);
        }
        shift() {
          let [top] = this.heap;
          this.heap[0] = this.heap[this.heap.length - 1];
          this.heap.pop();
          this.percDown(0);
          return top;
        }
        toArray() {
          return [...this];
        }
        *[Symbol.iterator]() {
          for (let i = 0; i < this.heap.length; i++) {
            yield this.heap[i].data;
          }
        }
        remove(testFn) {
          let j = 0;
          for (let i = 0; i < this.heap.length; i++) {
            if (!testFn(this.heap[i])) {
              this.heap[j] = this.heap[i];
              j++;
            }
          }
          this.heap.splice(j);
          for (let i = parent(this.heap.length - 1); i >= 0; i--) {
            this.percDown(i);
          }
          return this;
        }
      }
      function leftChi(i) {
        return (i << 1) + 1;
      }
      function parent(i) {
        return (i + 1 >> 1) - 1;
      }
      function smaller(x, y) {
        if (x.priority !== y.priority) {
          return x.priority < y.priority;
        } else {
          return x.pushCount < y.pushCount;
        }
      }
      function priorityQueue(worker, concurrency) {
        var q = queue(worker, concurrency);
        var {
          push,
          pushAsync
        } = q;
        q._tasks = new Heap();
        q._createTaskItem = ({ data, priority }, callback) => {
          return {
            data,
            priority,
            callback
          };
        };
        function createDataItems(tasks, priority) {
          if (!Array.isArray(tasks)) {
            return { data: tasks, priority };
          }
          return tasks.map((data) => {
            return { data, priority };
          });
        }
        q.push = function(data, priority = 0, callback) {
          return push(createDataItems(data, priority), callback);
        };
        q.pushAsync = function(data, priority = 0, callback) {
          return pushAsync(createDataItems(data, priority), callback);
        };
        delete q.unshift;
        delete q.unshiftAsync;
        return q;
      }
      function race(tasks, callback) {
        callback = once(callback);
        if (!Array.isArray(tasks)) return callback(new TypeError("First argument to race must be an array of functions"));
        if (!tasks.length) return callback();
        for (var i = 0, l = tasks.length; i < l; i++) {
          wrapAsync(tasks[i])(callback);
        }
      }
      var race$1 = awaitify(race, 2);
      function reduceRight(array, memo, iteratee, callback) {
        var reversed = [...array].reverse();
        return reduce$1(reversed, memo, iteratee, callback);
      }
      function reflect(fn) {
        var _fn = wrapAsync(fn);
        return initialParams(function reflectOn(args, reflectCallback) {
          args.push((error, ...cbArgs) => {
            let retVal = {};
            if (error) {
              retVal.error = error;
            }
            if (cbArgs.length > 0) {
              var value = cbArgs;
              if (cbArgs.length <= 1) {
                [value] = cbArgs;
              }
              retVal.value = value;
            }
            reflectCallback(null, retVal);
          });
          return _fn.apply(this, args);
        });
      }
      function reflectAll(tasks) {
        var results;
        if (Array.isArray(tasks)) {
          results = tasks.map(reflect);
        } else {
          results = {};
          Object.keys(tasks).forEach((key) => {
            results[key] = reflect.call(this, tasks[key]);
          });
        }
        return results;
      }
      function reject$2(eachfn, arr, _iteratee, callback) {
        const iteratee = wrapAsync(_iteratee);
        return _filter(eachfn, arr, (value, cb) => {
          iteratee(value, (err, v) => {
            cb(err, !v);
          });
        }, callback);
      }
      function reject(coll, iteratee, callback) {
        return reject$2(eachOf$1, coll, iteratee, callback);
      }
      var reject$1 = awaitify(reject, 3);
      function rejectLimit(coll, limit, iteratee, callback) {
        return reject$2(eachOfLimit$2(limit), coll, iteratee, callback);
      }
      var rejectLimit$1 = awaitify(rejectLimit, 4);
      function rejectSeries(coll, iteratee, callback) {
        return reject$2(eachOfSeries$1, coll, iteratee, callback);
      }
      var rejectSeries$1 = awaitify(rejectSeries, 3);
      function constant(value) {
        return function() {
          return value;
        };
      }
      const DEFAULT_TIMES = 5;
      const DEFAULT_INTERVAL = 0;
      function retry(opts, task, callback) {
        var options = {
          times: DEFAULT_TIMES,
          intervalFunc: constant(DEFAULT_INTERVAL)
        };
        if (arguments.length < 3 && typeof opts === "function") {
          callback = task || promiseCallback();
          task = opts;
        } else {
          parseTimes(options, opts);
          callback = callback || promiseCallback();
        }
        if (typeof task !== "function") {
          throw new Error("Invalid arguments for async.retry");
        }
        var _task = wrapAsync(task);
        var attempt = 1;
        function retryAttempt() {
          _task((err, ...args) => {
            if (err === false) return;
            if (err && attempt++ < options.times && (typeof options.errorFilter != "function" || options.errorFilter(err))) {
              setTimeout(retryAttempt, options.intervalFunc(attempt - 1));
            } else {
              callback(err, ...args);
            }
          });
        }
        retryAttempt();
        return callback[PROMISE_SYMBOL];
      }
      function parseTimes(acc, t) {
        if (typeof t === "object") {
          acc.times = +t.times || DEFAULT_TIMES;
          acc.intervalFunc = typeof t.interval === "function" ? t.interval : constant(+t.interval || DEFAULT_INTERVAL);
          acc.errorFilter = t.errorFilter;
        } else if (typeof t === "number" || typeof t === "string") {
          acc.times = +t || DEFAULT_TIMES;
        } else {
          throw new Error("Invalid arguments for async.retry");
        }
      }
      function retryable(opts, task) {
        if (!task) {
          task = opts;
          opts = null;
        }
        let arity = opts && opts.arity || task.length;
        if (isAsync(task)) {
          arity += 1;
        }
        var _task = wrapAsync(task);
        return initialParams((args, callback) => {
          if (args.length < arity - 1 || callback == null) {
            args.push(callback);
            callback = promiseCallback();
          }
          function taskFn(cb) {
            _task(...args, cb);
          }
          if (opts) retry(opts, taskFn, callback);
          else retry(taskFn, callback);
          return callback[PROMISE_SYMBOL];
        });
      }
      function series(tasks, callback) {
        return _parallel(eachOfSeries$1, tasks, callback);
      }
      function some(coll, iteratee, callback) {
        return _createTester(Boolean, (res) => res)(eachOf$1, coll, iteratee, callback);
      }
      var some$1 = awaitify(some, 3);
      function someLimit(coll, limit, iteratee, callback) {
        return _createTester(Boolean, (res) => res)(eachOfLimit$2(limit), coll, iteratee, callback);
      }
      var someLimit$1 = awaitify(someLimit, 4);
      function someSeries(coll, iteratee, callback) {
        return _createTester(Boolean, (res) => res)(eachOfSeries$1, coll, iteratee, callback);
      }
      var someSeries$1 = awaitify(someSeries, 3);
      function sortBy(coll, iteratee, callback) {
        var _iteratee = wrapAsync(iteratee);
        return map$1(coll, (x, iterCb) => {
          _iteratee(x, (err, criteria) => {
            if (err) return iterCb(err);
            iterCb(err, { value: x, criteria });
          });
        }, (err, results) => {
          if (err) return callback(err);
          callback(null, results.sort(comparator).map((v) => v.value));
        });
        function comparator(left, right) {
          var a = left.criteria, b = right.criteria;
          return a < b ? -1 : a > b ? 1 : 0;
        }
      }
      var sortBy$1 = awaitify(sortBy, 3);
      function timeout(asyncFn, milliseconds, info) {
        var fn = wrapAsync(asyncFn);
        return initialParams((args, callback) => {
          var timedOut = false;
          var timer;
          function timeoutCallback() {
            var name = asyncFn.name || "anonymous";
            var error = new Error('Callback function "' + name + '" timed out.');
            error.code = "ETIMEDOUT";
            if (info) {
              error.info = info;
            }
            timedOut = true;
            callback(error);
          }
          args.push((...cbArgs) => {
            if (!timedOut) {
              callback(...cbArgs);
              clearTimeout(timer);
            }
          });
          timer = setTimeout(timeoutCallback, milliseconds);
          fn(...args);
        });
      }
      function range(size) {
        var result2 = Array(size);
        while (size--) {
          result2[size] = size;
        }
        return result2;
      }
      function timesLimit(count, limit, iteratee, callback) {
        var _iteratee = wrapAsync(iteratee);
        return mapLimit$1(range(count), limit, _iteratee, callback);
      }
      function times(n, iteratee, callback) {
        return timesLimit(n, Infinity, iteratee, callback);
      }
      function timesSeries(n, iteratee, callback) {
        return timesLimit(n, 1, iteratee, callback);
      }
      function transform(coll, accumulator, iteratee, callback) {
        if (arguments.length <= 3 && typeof accumulator === "function") {
          callback = iteratee;
          iteratee = accumulator;
          accumulator = Array.isArray(coll) ? [] : {};
        }
        callback = once(callback || promiseCallback());
        var _iteratee = wrapAsync(iteratee);
        eachOf$1(coll, (v, k, cb) => {
          _iteratee(accumulator, v, k, cb);
        }, (err) => callback(err, accumulator));
        return callback[PROMISE_SYMBOL];
      }
      function tryEach(tasks, callback) {
        var error = null;
        var result2;
        return eachSeries$1(tasks, (task, taskCb) => {
          wrapAsync(task)((err, ...args) => {
            if (err === false) return taskCb(err);
            if (args.length < 2) {
              [result2] = args;
            } else {
              result2 = args;
            }
            error = err;
            taskCb(err ? null : {});
          });
        }, () => callback(error, result2));
      }
      var tryEach$1 = awaitify(tryEach);
      function unmemoize(fn) {
        return (...args) => {
          return (fn.unmemoized || fn)(...args);
        };
      }
      function whilst(test, iteratee, callback) {
        callback = onlyOnce(callback);
        var _fn = wrapAsync(iteratee);
        var _test = wrapAsync(test);
        var results = [];
        function next(err, ...rest) {
          if (err) return callback(err);
          results = rest;
          if (err === false) return;
          _test(check);
        }
        function check(err, truth) {
          if (err) return callback(err);
          if (err === false) return;
          if (!truth) return callback(null, ...results);
          _fn(next);
        }
        return _test(check);
      }
      var whilst$1 = awaitify(whilst, 3);
      function until(test, iteratee, callback) {
        const _test = wrapAsync(test);
        return whilst$1((cb) => _test((err, truth) => cb(err, !truth)), iteratee, callback);
      }
      function waterfall(tasks, callback) {
        callback = once(callback);
        if (!Array.isArray(tasks)) return callback(new Error("First argument to waterfall must be an array of functions"));
        if (!tasks.length) return callback();
        var taskIndex = 0;
        function nextTask(args) {
          var task = wrapAsync(tasks[taskIndex++]);
          task(...args, onlyOnce(next));
        }
        function next(err, ...args) {
          if (err === false) return;
          if (err || taskIndex === tasks.length) {
            return callback(err, ...args);
          }
          nextTask(args);
        }
        nextTask([]);
      }
      var waterfall$1 = awaitify(waterfall);
      var index = {
        apply,
        applyEach,
        applyEachSeries,
        asyncify,
        auto,
        autoInject,
        cargo: cargo$1,
        cargoQueue: cargo,
        compose,
        concat: concat$1,
        concatLimit: concatLimit$1,
        concatSeries: concatSeries$1,
        constant: constant$1,
        detect: detect$1,
        detectLimit: detectLimit$1,
        detectSeries: detectSeries$1,
        dir,
        doUntil,
        doWhilst: doWhilst$1,
        each,
        eachLimit: eachLimit$1,
        eachOf: eachOf$1,
        eachOfLimit: eachOfLimit$1,
        eachOfSeries: eachOfSeries$1,
        eachSeries: eachSeries$1,
        ensureAsync,
        every: every$1,
        everyLimit: everyLimit$1,
        everySeries: everySeries$1,
        filter: filter$1,
        filterLimit: filterLimit$1,
        filterSeries: filterSeries$1,
        forever: forever$1,
        groupBy,
        groupByLimit: groupByLimit$1,
        groupBySeries,
        log,
        map: map$1,
        mapLimit: mapLimit$1,
        mapSeries: mapSeries$1,
        mapValues,
        mapValuesLimit: mapValuesLimit$1,
        mapValuesSeries,
        memoize,
        nextTick,
        parallel,
        parallelLimit,
        priorityQueue,
        queue,
        race: race$1,
        reduce: reduce$1,
        reduceRight,
        reflect,
        reflectAll,
        reject: reject$1,
        rejectLimit: rejectLimit$1,
        rejectSeries: rejectSeries$1,
        retry,
        retryable,
        seq,
        series,
        setImmediate: setImmediate$1,
        some: some$1,
        someLimit: someLimit$1,
        someSeries: someSeries$1,
        sortBy: sortBy$1,
        timeout,
        times,
        timesLimit,
        timesSeries,
        transform,
        tryEach: tryEach$1,
        unmemoize,
        until,
        waterfall: waterfall$1,
        whilst: whilst$1,
        // aliases
        all: every$1,
        allLimit: everyLimit$1,
        allSeries: everySeries$1,
        any: some$1,
        anyLimit: someLimit$1,
        anySeries: someSeries$1,
        find: detect$1,
        findLimit: detectLimit$1,
        findSeries: detectSeries$1,
        flatMap: concat$1,
        flatMapLimit: concatLimit$1,
        flatMapSeries: concatSeries$1,
        forEach: each,
        forEachSeries: eachSeries$1,
        forEachLimit: eachLimit$1,
        forEachOf: eachOf$1,
        forEachOfSeries: eachOfSeries$1,
        forEachOfLimit: eachOfLimit$1,
        inject: reduce$1,
        foldl: reduce$1,
        foldr: reduceRight,
        select: filter$1,
        selectLimit: filterLimit$1,
        selectSeries: filterSeries$1,
        wrapSync: asyncify,
        during: whilst$1,
        doDuring: doWhilst$1
      };
      exports3.all = every$1;
      exports3.allLimit = everyLimit$1;
      exports3.allSeries = everySeries$1;
      exports3.any = some$1;
      exports3.anyLimit = someLimit$1;
      exports3.anySeries = someSeries$1;
      exports3.apply = apply;
      exports3.applyEach = applyEach;
      exports3.applyEachSeries = applyEachSeries;
      exports3.asyncify = asyncify;
      exports3.auto = auto;
      exports3.autoInject = autoInject;
      exports3.cargo = cargo$1;
      exports3.cargoQueue = cargo;
      exports3.compose = compose;
      exports3.concat = concat$1;
      exports3.concatLimit = concatLimit$1;
      exports3.concatSeries = concatSeries$1;
      exports3.constant = constant$1;
      exports3.default = index;
      exports3.detect = detect$1;
      exports3.detectLimit = detectLimit$1;
      exports3.detectSeries = detectSeries$1;
      exports3.dir = dir;
      exports3.doDuring = doWhilst$1;
      exports3.doUntil = doUntil;
      exports3.doWhilst = doWhilst$1;
      exports3.during = whilst$1;
      exports3.each = each;
      exports3.eachLimit = eachLimit$1;
      exports3.eachOf = eachOf$1;
      exports3.eachOfLimit = eachOfLimit$1;
      exports3.eachOfSeries = eachOfSeries$1;
      exports3.eachSeries = eachSeries$1;
      exports3.ensureAsync = ensureAsync;
      exports3.every = every$1;
      exports3.everyLimit = everyLimit$1;
      exports3.everySeries = everySeries$1;
      exports3.filter = filter$1;
      exports3.filterLimit = filterLimit$1;
      exports3.filterSeries = filterSeries$1;
      exports3.find = detect$1;
      exports3.findLimit = detectLimit$1;
      exports3.findSeries = detectSeries$1;
      exports3.flatMap = concat$1;
      exports3.flatMapLimit = concatLimit$1;
      exports3.flatMapSeries = concatSeries$1;
      exports3.foldl = reduce$1;
      exports3.foldr = reduceRight;
      exports3.forEach = each;
      exports3.forEachLimit = eachLimit$1;
      exports3.forEachOf = eachOf$1;
      exports3.forEachOfLimit = eachOfLimit$1;
      exports3.forEachOfSeries = eachOfSeries$1;
      exports3.forEachSeries = eachSeries$1;
      exports3.forever = forever$1;
      exports3.groupBy = groupBy;
      exports3.groupByLimit = groupByLimit$1;
      exports3.groupBySeries = groupBySeries;
      exports3.inject = reduce$1;
      exports3.log = log;
      exports3.map = map$1;
      exports3.mapLimit = mapLimit$1;
      exports3.mapSeries = mapSeries$1;
      exports3.mapValues = mapValues;
      exports3.mapValuesLimit = mapValuesLimit$1;
      exports3.mapValuesSeries = mapValuesSeries;
      exports3.memoize = memoize;
      exports3.nextTick = nextTick;
      exports3.parallel = parallel;
      exports3.parallelLimit = parallelLimit;
      exports3.priorityQueue = priorityQueue;
      exports3.queue = queue;
      exports3.race = race$1;
      exports3.reduce = reduce$1;
      exports3.reduceRight = reduceRight;
      exports3.reflect = reflect;
      exports3.reflectAll = reflectAll;
      exports3.reject = reject$1;
      exports3.rejectLimit = rejectLimit$1;
      exports3.rejectSeries = rejectSeries$1;
      exports3.retry = retry;
      exports3.retryable = retryable;
      exports3.select = filter$1;
      exports3.selectLimit = filterLimit$1;
      exports3.selectSeries = filterSeries$1;
      exports3.seq = seq;
      exports3.series = series;
      exports3.setImmediate = setImmediate$1;
      exports3.some = some$1;
      exports3.someLimit = someLimit$1;
      exports3.someSeries = someSeries$1;
      exports3.sortBy = sortBy$1;
      exports3.timeout = timeout;
      exports3.times = times;
      exports3.timesLimit = timesLimit;
      exports3.timesSeries = timesSeries;
      exports3.transform = transform;
      exports3.tryEach = tryEach$1;
      exports3.unmemoize = unmemoize;
      exports3.until = until;
      exports3.waterfall = waterfall$1;
      exports3.whilst = whilst$1;
      exports3.wrapSync = asyncify;
      Object.defineProperty(exports3, "__esModule", { value: true });
    });
  }
});

// node_modules/ms/index.js
var require_ms = __commonJS({
  "node_modules/ms/index.js"(exports2, module2) {
    var s = 1e3;
    var m = s * 60;
    var h = m * 60;
    var d = h * 24;
    var w = d * 7;
    var y = d * 365.25;
    module2.exports = function(val, options) {
      options = options || {};
      var type = typeof val;
      if (type === "string" && val.length > 0) {
        return parse(val);
      } else if (type === "number" && isFinite(val)) {
        return options.long ? fmtLong(val) : fmtShort(val);
      }
      throw new Error(
        "val is not a non-empty string or a valid number. val=" + JSON.stringify(val)
      );
    };
    function parse(str) {
      str = String(str);
      if (str.length > 100) {
        return;
      }
      var match = /^(-?(?:\d+)?\.?\d+) *(milliseconds?|msecs?|ms|seconds?|secs?|s|minutes?|mins?|m|hours?|hrs?|h|days?|d|weeks?|w|years?|yrs?|y)?$/i.exec(
        str
      );
      if (!match) {
        return;
      }
      var n = parseFloat(match[1]);
      var type = (match[2] || "ms").toLowerCase();
      switch (type) {
        case "years":
        case "year":
        case "yrs":
        case "yr":
        case "y":
          return n * y;
        case "weeks":
        case "week":
        case "w":
          return n * w;
        case "days":
        case "day":
        case "d":
          return n * d;
        case "hours":
        case "hour":
        case "hrs":
        case "hr":
        case "h":
          return n * h;
        case "minutes":
        case "minute":
        case "mins":
        case "min":
        case "m":
          return n * m;
        case "seconds":
        case "second":
        case "secs":
        case "sec":
        case "s":
          return n * s;
        case "milliseconds":
        case "millisecond":
        case "msecs":
        case "msec":
        case "ms":
          return n;
        default:
          return void 0;
      }
    }
    function fmtShort(ms) {
      var msAbs = Math.abs(ms);
      if (msAbs >= d) {
        return Math.round(ms / d) + "d";
      }
      if (msAbs >= h) {
        return Math.round(ms / h) + "h";
      }
      if (msAbs >= m) {
        return Math.round(ms / m) + "m";
      }
      if (msAbs >= s) {
        return Math.round(ms / s) + "s";
      }
      return ms + "ms";
    }
    function fmtLong(ms) {
      var msAbs = Math.abs(ms);
      if (msAbs >= d) {
        return plural(ms, msAbs, d, "day");
      }
      if (msAbs >= h) {
        return plural(ms, msAbs, h, "hour");
      }
      if (msAbs >= m) {
        return plural(ms, msAbs, m, "minute");
      }
      if (msAbs >= s) {
        return plural(ms, msAbs, s, "second");
      }
      return ms + " ms";
    }
    function plural(ms, msAbs, n, name) {
      var isPlural = msAbs >= n * 1.5;
      return Math.round(ms / n) + " " + name + (isPlural ? "s" : "");
    }
  }
});

// node_modules/debug/src/common.js
var require_common = __commonJS({
  "node_modules/debug/src/common.js"(exports2, module2) {
    function setup(env) {
      createDebug.debug = createDebug;
      createDebug.default = createDebug;
      createDebug.coerce = coerce;
      createDebug.disable = disable;
      createDebug.enable = enable;
      createDebug.enabled = enabled;
      createDebug.humanize = require_ms();
      createDebug.destroy = destroy;
      Object.keys(env).forEach((key) => {
        createDebug[key] = env[key];
      });
      createDebug.names = [];
      createDebug.skips = [];
      createDebug.formatters = {};
      function selectColor(namespace) {
        let hash = 0;
        for (let i = 0; i < namespace.length; i++) {
          hash = (hash << 5) - hash + namespace.charCodeAt(i);
          hash |= 0;
        }
        return createDebug.colors[Math.abs(hash) % createDebug.colors.length];
      }
      createDebug.selectColor = selectColor;
      function createDebug(namespace) {
        let prevTime;
        let enableOverride = null;
        let namespacesCache;
        let enabledCache;
        function debug(...args) {
          if (!debug.enabled) {
            return;
          }
          const self2 = debug;
          const curr = Number(/* @__PURE__ */ new Date());
          const ms = curr - (prevTime || curr);
          self2.diff = ms;
          self2.prev = prevTime;
          self2.curr = curr;
          prevTime = curr;
          args[0] = createDebug.coerce(args[0]);
          if (typeof args[0] !== "string") {
            args.unshift("%O");
          }
          let index = 0;
          args[0] = args[0].replace(/%([a-zA-Z%])/g, (match, format) => {
            if (match === "%%") {
              return "%";
            }
            index++;
            const formatter = createDebug.formatters[format];
            if (typeof formatter === "function") {
              const val = args[index];
              match = formatter.call(self2, val);
              args.splice(index, 1);
              index--;
            }
            return match;
          });
          createDebug.formatArgs.call(self2, args);
          const logFn = self2.log || createDebug.log;
          logFn.apply(self2, args);
        }
        debug.namespace = namespace;
        debug.useColors = createDebug.useColors();
        debug.color = createDebug.selectColor(namespace);
        debug.extend = extend;
        debug.destroy = createDebug.destroy;
        Object.defineProperty(debug, "enabled", {
          enumerable: true,
          configurable: false,
          get: () => {
            if (enableOverride !== null) {
              return enableOverride;
            }
            if (namespacesCache !== createDebug.namespaces) {
              namespacesCache = createDebug.namespaces;
              enabledCache = createDebug.enabled(namespace);
            }
            return enabledCache;
          },
          set: (v) => {
            enableOverride = v;
          }
        });
        if (typeof createDebug.init === "function") {
          createDebug.init(debug);
        }
        return debug;
      }
      function extend(namespace, delimiter) {
        const newDebug = createDebug(this.namespace + (typeof delimiter === "undefined" ? ":" : delimiter) + namespace);
        newDebug.log = this.log;
        return newDebug;
      }
      function enable(namespaces) {
        createDebug.save(namespaces);
        createDebug.namespaces = namespaces;
        createDebug.names = [];
        createDebug.skips = [];
        const split = (typeof namespaces === "string" ? namespaces : "").trim().replace(/\s+/g, ",").split(",").filter(Boolean);
        for (const ns of split) {
          if (ns[0] === "-") {
            createDebug.skips.push(ns.slice(1));
          } else {
            createDebug.names.push(ns);
          }
        }
      }
      function matchesTemplate(search, template) {
        let searchIndex = 0;
        let templateIndex = 0;
        let starIndex = -1;
        let matchIndex = 0;
        while (searchIndex < search.length) {
          if (templateIndex < template.length && (template[templateIndex] === search[searchIndex] || template[templateIndex] === "*")) {
            if (template[templateIndex] === "*") {
              starIndex = templateIndex;
              matchIndex = searchIndex;
              templateIndex++;
            } else {
              searchIndex++;
              templateIndex++;
            }
          } else if (starIndex !== -1) {
            templateIndex = starIndex + 1;
            matchIndex++;
            searchIndex = matchIndex;
          } else {
            return false;
          }
        }
        while (templateIndex < template.length && template[templateIndex] === "*") {
          templateIndex++;
        }
        return templateIndex === template.length;
      }
      function disable() {
        const namespaces = [
          ...createDebug.names,
          ...createDebug.skips.map((namespace) => "-" + namespace)
        ].join(",");
        createDebug.enable("");
        return namespaces;
      }
      function enabled(name) {
        for (const skip of createDebug.skips) {
          if (matchesTemplate(name, skip)) {
            return false;
          }
        }
        for (const ns of createDebug.names) {
          if (matchesTemplate(name, ns)) {
            return true;
          }
        }
        return false;
      }
      function coerce(val) {
        if (val instanceof Error) {
          return val.stack || val.message;
        }
        return val;
      }
      function destroy() {
        console.warn("Instance method `debug.destroy()` is deprecated and no longer does anything. It will be removed in the next major version of `debug`.");
      }
      createDebug.enable(createDebug.load());
      return createDebug;
    }
    module2.exports = setup;
  }
});

// node_modules/debug/src/browser.js
var require_browser = __commonJS({
  "node_modules/debug/src/browser.js"(exports2, module2) {
    exports2.formatArgs = formatArgs;
    exports2.save = save;
    exports2.load = load;
    exports2.useColors = useColors;
    exports2.storage = localstorage();
    exports2.destroy = /* @__PURE__ */ (() => {
      let warned = false;
      return () => {
        if (!warned) {
          warned = true;
          console.warn("Instance method `debug.destroy()` is deprecated and no longer does anything. It will be removed in the next major version of `debug`.");
        }
      };
    })();
    exports2.colors = [
      "#0000CC",
      "#0000FF",
      "#0033CC",
      "#0033FF",
      "#0066CC",
      "#0066FF",
      "#0099CC",
      "#0099FF",
      "#00CC00",
      "#00CC33",
      "#00CC66",
      "#00CC99",
      "#00CCCC",
      "#00CCFF",
      "#3300CC",
      "#3300FF",
      "#3333CC",
      "#3333FF",
      "#3366CC",
      "#3366FF",
      "#3399CC",
      "#3399FF",
      "#33CC00",
      "#33CC33",
      "#33CC66",
      "#33CC99",
      "#33CCCC",
      "#33CCFF",
      "#6600CC",
      "#6600FF",
      "#6633CC",
      "#6633FF",
      "#66CC00",
      "#66CC33",
      "#9900CC",
      "#9900FF",
      "#9933CC",
      "#9933FF",
      "#99CC00",
      "#99CC33",
      "#CC0000",
      "#CC0033",
      "#CC0066",
      "#CC0099",
      "#CC00CC",
      "#CC00FF",
      "#CC3300",
      "#CC3333",
      "#CC3366",
      "#CC3399",
      "#CC33CC",
      "#CC33FF",
      "#CC6600",
      "#CC6633",
      "#CC9900",
      "#CC9933",
      "#CCCC00",
      "#CCCC33",
      "#FF0000",
      "#FF0033",
      "#FF0066",
      "#FF0099",
      "#FF00CC",
      "#FF00FF",
      "#FF3300",
      "#FF3333",
      "#FF3366",
      "#FF3399",
      "#FF33CC",
      "#FF33FF",
      "#FF6600",
      "#FF6633",
      "#FF9900",
      "#FF9933",
      "#FFCC00",
      "#FFCC33"
    ];
    function useColors() {
      if (typeof window !== "undefined" && window.process && (window.process.type === "renderer" || window.process.__nwjs)) {
        return true;
      }
      if (typeof navigator !== "undefined" && navigator.userAgent && navigator.userAgent.toLowerCase().match(/(edge|trident)\/(\d+)/)) {
        return false;
      }
      let m;
      return typeof document !== "undefined" && document.documentElement && document.documentElement.style && document.documentElement.style.WebkitAppearance || // Is firebug? http://stackoverflow.com/a/398120/376773
      typeof window !== "undefined" && window.console && (window.console.firebug || window.console.exception && window.console.table) || // Is firefox >= v31?
      // https://developer.mozilla.org/en-US/docs/Tools/Web_Console#Styling_messages
      typeof navigator !== "undefined" && navigator.userAgent && (m = navigator.userAgent.toLowerCase().match(/firefox\/(\d+)/)) && parseInt(m[1], 10) >= 31 || // Double check webkit in userAgent just in case we are in a worker
      typeof navigator !== "undefined" && navigator.userAgent && navigator.userAgent.toLowerCase().match(/applewebkit\/(\d+)/);
    }
    function formatArgs(args) {
      args[0] = (this.useColors ? "%c" : "") + this.namespace + (this.useColors ? " %c" : " ") + args[0] + (this.useColors ? "%c " : " ") + "+" + module2.exports.humanize(this.diff);
      if (!this.useColors) {
        return;
      }
      const c = "color: " + this.color;
      args.splice(1, 0, c, "color: inherit");
      let index = 0;
      let lastC = 0;
      args[0].replace(/%[a-zA-Z%]/g, (match) => {
        if (match === "%%") {
          return;
        }
        index++;
        if (match === "%c") {
          lastC = index;
        }
      });
      args.splice(lastC, 0, c);
    }
    exports2.log = console.debug || console.log || (() => {
    });
    function save(namespaces) {
      try {
        if (namespaces) {
          exports2.storage.setItem("debug", namespaces);
        } else {
          exports2.storage.removeItem("debug");
        }
      } catch (error) {
      }
    }
    function load() {
      let r;
      try {
        r = exports2.storage.getItem("debug") || exports2.storage.getItem("DEBUG");
      } catch (error) {
      }
      if (!r && typeof process !== "undefined" && "env" in process) {
        r = process.env.DEBUG;
      }
      return r;
    }
    function localstorage() {
      try {
        return localStorage;
      } catch (error) {
      }
    }
    module2.exports = require_common()(exports2);
    var { formatters } = module2.exports;
    formatters.j = function(v) {
      try {
        return JSON.stringify(v);
      } catch (error) {
        return "[UnexpectedJSONParseError]: " + error.message;
      }
    };
  }
});

// ../../../../node_modules/has-flag/index.js
var require_has_flag = __commonJS({
  "../../../../node_modules/has-flag/index.js"(exports2, module2) {
    "use strict";
    module2.exports = (flag, argv = process.argv) => {
      const prefix = flag.startsWith("-") ? "" : flag.length === 1 ? "-" : "--";
      const position = argv.indexOf(prefix + flag);
      const terminatorPosition = argv.indexOf("--");
      return position !== -1 && (terminatorPosition === -1 || position < terminatorPosition);
    };
  }
});

// ../../../../node_modules/supports-color/index.js
var require_supports_color = __commonJS({
  "../../../../node_modules/supports-color/index.js"(exports2, module2) {
    "use strict";
    var os = require("os");
    var tty = require("tty");
    var hasFlag = require_has_flag();
    var { env } = process;
    var flagForceColor;
    if (hasFlag("no-color") || hasFlag("no-colors") || hasFlag("color=false") || hasFlag("color=never")) {
      flagForceColor = 0;
    } else if (hasFlag("color") || hasFlag("colors") || hasFlag("color=true") || hasFlag("color=always")) {
      flagForceColor = 1;
    }
    function envForceColor() {
      if ("FORCE_COLOR" in env) {
        if (env.FORCE_COLOR === "true") {
          return 1;
        }
        if (env.FORCE_COLOR === "false") {
          return 0;
        }
        return env.FORCE_COLOR.length === 0 ? 1 : Math.min(Number.parseInt(env.FORCE_COLOR, 10), 3);
      }
    }
    function translateLevel(level) {
      if (level === 0) {
        return false;
      }
      return {
        level,
        hasBasic: true,
        has256: level >= 2,
        has16m: level >= 3
      };
    }
    function supportsColor(haveStream, { streamIsTTY, sniffFlags = true } = {}) {
      const noFlagForceColor = envForceColor();
      if (noFlagForceColor !== void 0) {
        flagForceColor = noFlagForceColor;
      }
      const forceColor = sniffFlags ? flagForceColor : noFlagForceColor;
      if (forceColor === 0) {
        return 0;
      }
      if (sniffFlags) {
        if (hasFlag("color=16m") || hasFlag("color=full") || hasFlag("color=truecolor")) {
          return 3;
        }
        if (hasFlag("color=256")) {
          return 2;
        }
      }
      if (haveStream && !streamIsTTY && forceColor === void 0) {
        return 0;
      }
      const min = forceColor || 0;
      if (env.TERM === "dumb") {
        return min;
      }
      if (process.platform === "win32") {
        const osRelease = os.release().split(".");
        if (Number(osRelease[0]) >= 10 && Number(osRelease[2]) >= 10586) {
          return Number(osRelease[2]) >= 14931 ? 3 : 2;
        }
        return 1;
      }
      if ("CI" in env) {
        if (["TRAVIS", "CIRCLECI", "APPVEYOR", "GITLAB_CI", "GITHUB_ACTIONS", "BUILDKITE", "DRONE"].some((sign) => sign in env) || env.CI_NAME === "codeship") {
          return 1;
        }
        return min;
      }
      if ("TEAMCITY_VERSION" in env) {
        return /^(9\.(0*[1-9]\d*)\.|\d{2,}\.)/.test(env.TEAMCITY_VERSION) ? 1 : 0;
      }
      if (env.COLORTERM === "truecolor") {
        return 3;
      }
      if ("TERM_PROGRAM" in env) {
        const version = Number.parseInt((env.TERM_PROGRAM_VERSION || "").split(".")[0], 10);
        switch (env.TERM_PROGRAM) {
          case "iTerm.app":
            return version >= 3 ? 3 : 2;
          case "Apple_Terminal":
            return 2;
        }
      }
      if (/-256(color)?$/i.test(env.TERM)) {
        return 2;
      }
      if (/^screen|^xterm|^vt100|^vt220|^rxvt|color|ansi|cygwin|linux/i.test(env.TERM)) {
        return 1;
      }
      if ("COLORTERM" in env) {
        return 1;
      }
      return min;
    }
    function getSupportLevel(stream, options = {}) {
      const level = supportsColor(stream, {
        streamIsTTY: stream && stream.isTTY,
        ...options
      });
      return translateLevel(level);
    }
    module2.exports = {
      supportsColor: getSupportLevel,
      stdout: getSupportLevel({ isTTY: tty.isatty(1) }),
      stderr: getSupportLevel({ isTTY: tty.isatty(2) })
    };
  }
});

// node_modules/debug/src/node.js
var require_node = __commonJS({
  "node_modules/debug/src/node.js"(exports2, module2) {
    var tty = require("tty");
    var util = require("util");
    exports2.init = init;
    exports2.log = log;
    exports2.formatArgs = formatArgs;
    exports2.save = save;
    exports2.load = load;
    exports2.useColors = useColors;
    exports2.destroy = util.deprecate(
      () => {
      },
      "Instance method `debug.destroy()` is deprecated and no longer does anything. It will be removed in the next major version of `debug`."
    );
    exports2.colors = [6, 2, 3, 4, 5, 1];
    try {
      const supportsColor = require_supports_color();
      if (supportsColor && (supportsColor.stderr || supportsColor).level >= 2) {
        exports2.colors = [
          20,
          21,
          26,
          27,
          32,
          33,
          38,
          39,
          40,
          41,
          42,
          43,
          44,
          45,
          56,
          57,
          62,
          63,
          68,
          69,
          74,
          75,
          76,
          77,
          78,
          79,
          80,
          81,
          92,
          93,
          98,
          99,
          112,
          113,
          128,
          129,
          134,
          135,
          148,
          149,
          160,
          161,
          162,
          163,
          164,
          165,
          166,
          167,
          168,
          169,
          170,
          171,
          172,
          173,
          178,
          179,
          184,
          185,
          196,
          197,
          198,
          199,
          200,
          201,
          202,
          203,
          204,
          205,
          206,
          207,
          208,
          209,
          214,
          215,
          220,
          221
        ];
      }
    } catch (error) {
    }
    exports2.inspectOpts = Object.keys(process.env).filter((key) => {
      return /^debug_/i.test(key);
    }).reduce((obj, key) => {
      const prop = key.substring(6).toLowerCase().replace(/_([a-z])/g, (_, k) => {
        return k.toUpperCase();
      });
      let val = process.env[key];
      if (/^(yes|on|true|enabled)$/i.test(val)) {
        val = true;
      } else if (/^(no|off|false|disabled)$/i.test(val)) {
        val = false;
      } else if (val === "null") {
        val = null;
      } else {
        val = Number(val);
      }
      obj[prop] = val;
      return obj;
    }, {});
    function useColors() {
      return "colors" in exports2.inspectOpts ? Boolean(exports2.inspectOpts.colors) : tty.isatty(process.stderr.fd);
    }
    function formatArgs(args) {
      const { namespace: name, useColors: useColors2 } = this;
      if (useColors2) {
        const c = this.color;
        const colorCode = "\x1B[3" + (c < 8 ? c : "8;5;" + c);
        const prefix = `  ${colorCode};1m${name} \x1B[0m`;
        args[0] = prefix + args[0].split("\n").join("\n" + prefix);
        args.push(colorCode + "m+" + module2.exports.humanize(this.diff) + "\x1B[0m");
      } else {
        args[0] = getDate() + name + " " + args[0];
      }
    }
    function getDate() {
      if (exports2.inspectOpts.hideDate) {
        return "";
      }
      return (/* @__PURE__ */ new Date()).toISOString() + " ";
    }
    function log(...args) {
      return process.stderr.write(util.formatWithOptions(exports2.inspectOpts, ...args) + "\n");
    }
    function save(namespaces) {
      if (namespaces) {
        process.env.DEBUG = namespaces;
      } else {
        delete process.env.DEBUG;
      }
    }
    function load() {
      return process.env.DEBUG;
    }
    function init(debug) {
      debug.inspectOpts = {};
      const keys = Object.keys(exports2.inspectOpts);
      for (let i = 0; i < keys.length; i++) {
        debug.inspectOpts[keys[i]] = exports2.inspectOpts[keys[i]];
      }
    }
    module2.exports = require_common()(exports2);
    var { formatters } = module2.exports;
    formatters.o = function(v) {
      this.inspectOpts.colors = this.useColors;
      return util.inspect(v, this.inspectOpts).split("\n").map((str) => str.trim()).join(" ");
    };
    formatters.O = function(v) {
      this.inspectOpts.colors = this.useColors;
      return util.inspect(v, this.inspectOpts);
    };
  }
});

// node_modules/debug/src/index.js
var require_src = __commonJS({
  "node_modules/debug/src/index.js"(exports2, module2) {
    if (typeof process === "undefined" || process.type === "renderer" || process.browser === true || process.__nwjs) {
      module2.exports = require_browser();
    } else {
      module2.exports = require_node();
    }
  }
});

// node_modules/portfinder/lib/portfinder.js
var require_portfinder = __commonJS({
  "node_modules/portfinder/lib/portfinder.js"(exports2) {
    "use strict";
    var fs2 = require("fs");
    var os = require("os");
    var net = require("net");
    var path2 = require("path");
    var _async = require_async();
    var debug = require_src();
    var debugTestPort = debug("portfinder:testPort");
    var debugGetPort = debug("portfinder:getPort");
    var debugDefaultHosts = debug("portfinder:defaultHosts");
    var internals = {};
    internals.testPort = function(options, callback) {
      if (!callback) {
        callback = options;
        options = {};
      }
      options.server = options.server || net.createServer(function() {
      });
      debugTestPort("entered testPort(): trying", options.host, "port", options.port);
      function onListen() {
        debugTestPort("done w/ testPort(): OK", options.host, "port", options.port);
        options.server.removeListener("error", onError);
        options.server.close(function() {
          debugTestPort("done w/ testPort(): Server closed", options.host, "port", options.port);
          callback(null, options.port);
        });
      }
      function onError(err) {
        debugTestPort("done w/ testPort(): failed", options.host, "w/ port", options.port, "with error", err.code);
        options.server.removeListener("listening", onListen);
        if (!(err.code == "EADDRINUSE" || err.code == "EACCES")) {
          return callback(err);
        }
        const nextPort = exports2.nextPort(options.port);
        if (nextPort > exports2.highestPort) {
          return callback(new Error("No open ports available"));
        }
        internals.testPort({
          port: nextPort,
          host: options.host,
          server: options.server
        }, callback);
      }
      options.server.once("error", onError);
      options.server.once("listening", onListen);
      if (options.host) {
        options.server.listen(options.port, options.host);
      } else {
        options.server.listen(options.port);
      }
    };
    exports2.basePort = 8e3;
    exports2.setBasePort = function(port) {
      exports2.basePort = port;
    };
    exports2.highestPort = 65535;
    exports2.setHighestPort = function(port) {
      exports2.highestPort = port;
    };
    exports2.basePath = "/tmp/portfinder";
    exports2.setBasePath = function(path3) {
      exports2.basePath = path3;
    };
    internals.getPort = function(options, callback) {
      options.port = Number(options.port) || Number(options.startPort) || Number(exports2.basePort);
      options.host = options.host || null;
      options.stopPort = Number(options.stopPort) || Number(exports2.highestPort);
      if (!options.startPort) {
        options.startPort = options.port;
        if (options.startPort < 0) {
          return callback(Error(`Provided options.port(${options.port}) is less than 0, which are cannot be bound.`));
        }
        if (options.stopPort < options.startPort) {
          return callback(Error(`Provided options.stopPort(${options.stopPort}) is less than options.port(${options.startPort})`));
        }
      }
      if (options.host && exports2._defaultHosts.indexOf(options.host) === -1) {
        exports2._defaultHosts.push(options.host);
      }
      const openPorts = [];
      let currentHost;
      return _async.eachSeries(exports2._defaultHosts, function(host, next) {
        debugGetPort("in eachSeries() iteration callback: host is", host);
        return internals.testPort({ host, port: options.port }, function(err, port) {
          if (err) {
            debugGetPort("in eachSeries() iteration callback testPort() callback", "with an err:", err.code);
            currentHost = host;
            return next(err);
          } else {
            debugGetPort(
              "in eachSeries() iteration callback testPort() callback",
              "with a success for port",
              port
            );
            openPorts.push(port);
            return next();
          }
        });
      }, function(err) {
        if (err) {
          debugGetPort("in eachSeries() result callback: err is", err);
          if (err.code === "EADDRNOTAVAIL" || err.code === "EINVAL") {
            if (options.host === currentHost) {
              const msg = "Provided host " + options.host + " could NOT be bound. Please provide a different host address or hostname";
              return callback(Error(msg));
            } else {
              const idx = exports2._defaultHosts.indexOf(currentHost);
              exports2._defaultHosts.splice(idx, 1);
              return internals.getPort(options, callback);
            }
          } else {
            return callback(err);
          }
        }
        openPorts.sort(function(a, b) {
          return a - b;
        });
        debugGetPort("in eachSeries() result callback: openPorts is", openPorts);
        if (openPorts[0] === openPorts[openPorts.length - 1]) {
          if (openPorts[0] <= options.stopPort) {
            return callback(null, openPorts[0]);
          } else {
            const msg = "No open ports found in between " + options.startPort + " and " + options.stopPort;
            return callback(Error(msg));
          }
        } else {
          return internals.getPort({ port: openPorts.pop(), host: options.host, startPort: options.startPort, stopPort: options.stopPort }, callback);
        }
      });
    };
    exports2.getPort = function(options, callback) {
      if (typeof options === "function") {
        callback = options;
        options = {};
      }
      options = options || {};
      if (!callback) {
        return new Promise(function(resolve, reject) {
          internals.getPort(options, function(err, port) {
            if (err) {
              return reject(err);
            }
            resolve(port);
          });
        });
      } else {
        internals.getPort(options, callback);
      }
    };
    exports2.getPortPromise = exports2.getPort;
    internals.getPorts = function(count, options, callback) {
      let lastPort = null;
      _async.timesSeries(count, function(index, asyncCallback) {
        if (lastPort) {
          options.port = exports2.nextPort(lastPort);
        }
        internals.getPort(options, function(err, port) {
          if (err) {
            asyncCallback(err);
          } else {
            lastPort = port;
            asyncCallback(null, port);
          }
        });
      }, callback);
    };
    exports2.getPorts = function(count, options, callback) {
      if (typeof options === "function") {
        callback = options;
        options = {};
      }
      options = options || {};
      if (!callback) {
        return new Promise(function(resolve, reject) {
          internals.getPorts(count, options, function(err, ports) {
            if (err) {
              return reject(err);
            }
            resolve(ports);
          });
        });
      } else {
        internals.getPorts(count, options, callback);
      }
    };
    exports2.getPortsPromise = exports2.getPorts;
    internals.getSocket = function(options, callback) {
      options.mod = options.mod || parseInt(755, 8);
      options.path = options.path || exports2.basePath + ".sock";
      function testSocket() {
        fs2.stat(options.path, function(err) {
          if (err) {
            if (err.code == "ENOENT") {
              callback(null, options.path);
            } else {
              callback(err);
            }
          } else {
            options.path = exports2.nextSocket(options.path);
            internals.getSocket(options, callback);
          }
        });
      }
      function createAndTestSocket(dir) {
        fs2.mkdir(dir, { mode: options.mod, recursive: true }, function(err) {
          if (err) {
            return callback(err);
          }
          options.exists = true;
          testSocket();
        });
      }
      function checkAndTestSocket() {
        const dir = path2.dirname(options.path);
        fs2.stat(dir, function(err, stats) {
          if (err || !stats.isDirectory()) {
            return createAndTestSocket(dir);
          }
          options.exists = true;
          testSocket();
        });
      }
      return options.exists ? testSocket() : checkAndTestSocket();
    };
    exports2.getSocket = function(options, callback) {
      if (typeof options === "function") {
        callback = options;
        options = {};
      }
      options = options || {};
      if (!callback) {
        return new Promise(function(resolve, reject) {
          internals.getSocket(options, function(err, socketPath) {
            if (err) {
              return reject(err);
            }
            resolve(socketPath);
          });
        });
      } else {
        internals.getSocket(options, callback);
      }
    };
    exports2.getSocketPromise = exports2.getSocket;
    exports2.nextPort = function(port) {
      return port + 1;
    };
    exports2.nextSocket = function(socketPath) {
      const dir = path2.dirname(socketPath), name = path2.basename(socketPath, ".sock"), match = name.match(/^([a-zA-z]+)(\d*)$/i), base = match[1];
      let index = parseInt(match[2]);
      if (isNaN(index)) {
        index = 0;
      }
      index += 1;
      return path2.join(dir, base + index + ".sock");
    };
    exports2._defaultHosts = function() {
      let interfaces = {};
      try {
        interfaces = os.networkInterfaces();
      } catch (e) {
        if (e.syscall === "uv_interface_addresses") {
        } else {
          throw e;
        }
      }
      const interfaceNames = Object.keys(interfaces), hiddenButImportantHost = "0.0.0.0", results = [hiddenButImportantHost];
      for (let i = 0; i < interfaceNames.length; i++) {
        const _interface = interfaces[interfaceNames[i]];
        for (let j = 0; j < _interface.length; j++) {
          const curr = _interface[j];
          results.push(curr.address);
        }
      }
      results.push(null);
      debugDefaultHosts("exports._defaultHosts is: %o", results);
      return results;
    }();
  }
});

// node_modules/systeminformation/package.json
var require_package = __commonJS({
  "node_modules/systeminformation/package.json"(exports2, module2) {
    module2.exports = {
      name: "systeminformation",
      version: "5.27.7",
      description: "Advanced, lightweight system and OS information library",
      license: "MIT",
      author: "Sebastian Hildebrandt <hildebrandt@plus-innovations.com> (https://plus-innovations.com)",
      homepage: "https://systeminformation.io",
      main: "./lib/index.js",
      type: "commonjs",
      bin: {
        systeminformation: "lib/cli.js"
      },
      types: "./lib/index.d.ts",
      scripts: {
        test: "node ./test/test.js",
        testDeno: "deno run -A ./test/test.js"
      },
      files: [
        "lib/"
      ],
      keywords: [
        "system information",
        "sysinfo",
        "monitor",
        "monitoring",
        "os",
        "linux",
        "osx",
        "windows",
        "freebsd",
        "openbsd",
        "netbsd",
        "cpu",
        "cpuload",
        "physical cores",
        "logical cores",
        "processor",
        "cores",
        "threads",
        "socket type",
        "memory",
        "file system",
        "fsstats",
        "diskio",
        "block devices",
        "netstats",
        "network",
        "network interfaces",
        "network connections",
        "network stats",
        "iface",
        "printer",
        "processes",
        "users",
        "internet",
        "battery",
        "docker",
        "docker stats",
        "docker processes",
        "graphics",
        "graphic card",
        "graphic controller",
        "gpu",
        "display",
        "smart",
        "disk layout",
        "usb",
        "audio",
        "bluetooth",
        "wifi",
        "wifinetworks",
        "virtual box",
        "virtualbox",
        "vm",
        "backend",
        "hardware",
        "BIOS",
        "chassis"
      ],
      repository: {
        type: "git",
        url: "https://github.com/sebhildebrandt/systeminformation.git"
      },
      funding: {
        type: "Buy me a coffee",
        url: "https://www.buymeacoffee.com/systeminfo"
      },
      os: [
        "darwin",
        "linux",
        "win32",
        "freebsd",
        "openbsd",
        "netbsd",
        "sunos",
        "android"
      ],
      engines: {
        node: ">=8.0.0"
      }
    };
  }
});

// node_modules/systeminformation/lib/util.js
var require_util = __commonJS({
  "node_modules/systeminformation/lib/util.js"(exports2) {
    "use strict";
    var os = require("os");
    var fs2 = require("fs");
    var path2 = require("path");
    var spawn = require("child_process").spawn;
    var exec = require("child_process").exec;
    var execSync = require("child_process").execSync;
    var util = require("util");
    var _platform = process.platform;
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _cores = 0;
    var wmicPath = "";
    var codepage = "";
    var _smartMonToolsInstalled = null;
    var _rpi_cpuinfo = null;
    var WINDIR = process.env.WINDIR || "C:\\Windows";
    var _psChild;
    var _psResult = "";
    var _psCmds = [];
    var _psPersistent = false;
    var _powerShell = "";
    var _psToUTF8 = "$OutputEncoding = [System.Console]::OutputEncoding = [System.Console]::InputEncoding = [System.Text.Encoding]::UTF8 ; ";
    var _psCmdStart = "--###START###--";
    var _psError = "--ERROR--";
    var _psCmdSeperator = "--###ENDCMD###--";
    var _psIdSeperator = "--##ID##--";
    var execOptsWin = {
      windowsHide: true,
      maxBuffer: 1024 * 2e4,
      encoding: "UTF-8",
      env: Object.assign({}, process.env, { LANG: "en_US.UTF-8" })
    };
    var execOptsLinux = {
      maxBuffer: 1024 * 2e4,
      encoding: "UTF-8",
      stdio: ["pipe", "pipe", "ignore"]
    };
    function toInt(value) {
      let result2 = parseInt(value, 10);
      if (isNaN(result2)) {
        result2 = 0;
      }
      return result2;
    }
    function splitByNumber(str) {
      let numberStarted = false;
      let num = "";
      let cpart = "";
      for (const c of str) {
        if (c >= "0" && c <= "9" || numberStarted) {
          numberStarted = true;
          num += c;
        } else {
          cpart += c;
        }
      }
      return [cpart, num];
    }
    var stringObj = new String();
    var stringReplace = new String().replace;
    var stringToLower = new String().toLowerCase;
    var stringToString = new String().toString;
    var stringSubstr = new String().substr;
    var stringSubstring = new String().substring;
    var stringTrim = new String().trim;
    var stringStartWith = new String().startsWith;
    var mathMin = Math.min;
    function isFunction(functionToCheck) {
      let getType = {};
      return functionToCheck && getType.toString.call(functionToCheck) === "[object Function]";
    }
    function unique(obj) {
      let uniques = [];
      let stringify = {};
      for (let i = 0; i < obj.length; i++) {
        let keys = Object.keys(obj[i]);
        keys.sort(function(a, b) {
          return a - b;
        });
        let str = "";
        for (let j = 0; j < keys.length; j++) {
          str += JSON.stringify(keys[j]);
          str += JSON.stringify(obj[i][keys[j]]);
        }
        if (!{}.hasOwnProperty.call(stringify, str)) {
          uniques.push(obj[i]);
          stringify[str] = true;
        }
      }
      return uniques;
    }
    function sortByKey(array, keys) {
      return array.sort(function(a, b) {
        let x = "";
        let y = "";
        keys.forEach(function(key) {
          x = x + a[key];
          y = y + b[key];
        });
        return x < y ? -1 : x > y ? 1 : 0;
      });
    }
    function cores() {
      if (_cores === 0) {
        _cores = os.cpus().length;
      }
      return _cores;
    }
    function getValue(lines, property, separator, trimmed, lineMatch) {
      separator = separator || ":";
      property = property.toLowerCase();
      trimmed = trimmed || false;
      lineMatch = lineMatch || false;
      let result2 = "";
      lines.some((line) => {
        let lineLower = line.toLowerCase().replace(/\t/g, "");
        if (trimmed) {
          lineLower = lineLower.trim();
        }
        if (lineLower.startsWith(property) && (lineMatch ? lineLower.match(property + separator) || lineLower.match(property + " " + separator) : true)) {
          const parts = trimmed ? line.trim().split(separator) : line.split(separator);
          if (parts.length >= 2) {
            parts.shift();
            result2 = parts.join(separator).trim();
            return true;
          }
        }
      });
      return result2;
    }
    function decodeEscapeSequence(str, base) {
      base = base || 16;
      return str.replace(/\\x([0-9A-Fa-f]{2})/g, function() {
        return String.fromCharCode(parseInt(arguments[1], base));
      });
    }
    function detectSplit(str) {
      let seperator = "";
      let part = 0;
      str.split("").forEach((element) => {
        if (element >= "0" && element <= "9") {
          if (part === 1) {
            part++;
          }
        } else {
          if (part === 0) {
            part++;
          }
          if (part === 1) {
            seperator += element;
          }
        }
      });
      return seperator;
    }
    function parseTime(t, pmDesignator) {
      pmDesignator = pmDesignator || "";
      t = t.toUpperCase();
      let hour = 0;
      let min = 0;
      let splitter = detectSplit(t);
      let parts = t.split(splitter);
      if (parts.length >= 2) {
        if (parts[2]) {
          parts[1] += parts[2];
        }
        let isPM = parts[1] && parts[1].toLowerCase().indexOf("pm") > -1 || parts[1].toLowerCase().indexOf("p.m.") > -1 || parts[1].toLowerCase().indexOf("p. m.") > -1 || parts[1].toLowerCase().indexOf("n") > -1 || parts[1].toLowerCase().indexOf("ch") > -1 || parts[1].toLowerCase().indexOf("\xF6s") > -1 || pmDesignator && parts[1].toLowerCase().indexOf(pmDesignator) > -1;
        hour = parseInt(parts[0], 10);
        min = parseInt(parts[1], 10);
        hour = isPM && hour < 12 ? hour + 12 : hour;
        return ("0" + hour).substr(-2) + ":" + ("0" + min).substr(-2);
      }
    }
    function parseDateTime(dt, culture) {
      const result2 = {
        date: "",
        time: ""
      };
      culture = culture || {};
      let dateFormat = (culture.dateFormat || "").toLowerCase();
      let pmDesignator = culture.pmDesignator || "";
      const parts = dt.split(" ");
      if (parts[0]) {
        if (parts[0].indexOf("/") >= 0) {
          const dtparts = parts[0].split("/");
          if (dtparts.length === 3) {
            if (dtparts[0].length === 4) {
              result2.date = dtparts[0] + "-" + ("0" + dtparts[1]).substr(-2) + "-" + ("0" + dtparts[2]).substr(-2);
            } else if (dtparts[2].length === 2) {
              if (dateFormat.indexOf("/d/") > -1 || dateFormat.indexOf("/dd/") > -1) {
                result2.date = "20" + dtparts[2] + "-" + ("0" + dtparts[1]).substr(-2) + "-" + ("0" + dtparts[0]).substr(-2);
              } else {
                result2.date = "20" + dtparts[2] + "-" + ("0" + dtparts[1]).substr(-2) + "-" + ("0" + dtparts[0]).substr(-2);
              }
            } else {
              const isEN = dt.toLowerCase().indexOf("pm") > -1 || dt.toLowerCase().indexOf("p.m.") > -1 || dt.toLowerCase().indexOf("p. m.") > -1 || dt.toLowerCase().indexOf("am") > -1 || dt.toLowerCase().indexOf("a.m.") > -1 || dt.toLowerCase().indexOf("a. m.") > -1;
              if ((isEN || dateFormat.indexOf("/d/") > -1 || dateFormat.indexOf("/dd/") > -1) && dateFormat.indexOf("dd/") !== 0) {
                result2.date = dtparts[2] + "-" + ("0" + dtparts[0]).substr(-2) + "-" + ("0" + dtparts[1]).substr(-2);
              } else {
                result2.date = dtparts[2] + "-" + ("0" + dtparts[1]).substr(-2) + "-" + ("0" + dtparts[0]).substr(-2);
              }
            }
          }
        }
        if (parts[0].indexOf(".") >= 0) {
          const dtparts = parts[0].split(".");
          if (dtparts.length === 3) {
            if (dateFormat.indexOf(".d.") > -1 || dateFormat.indexOf(".dd.") > -1) {
              result2.date = dtparts[2] + "-" + ("0" + dtparts[0]).substr(-2) + "-" + ("0" + dtparts[1]).substr(-2);
            } else {
              result2.date = dtparts[2] + "-" + ("0" + dtparts[1]).substr(-2) + "-" + ("0" + dtparts[0]).substr(-2);
            }
          }
        }
        if (parts[0].indexOf("-") >= 0) {
          const dtparts = parts[0].split("-");
          if (dtparts.length === 3) {
            result2.date = dtparts[0] + "-" + ("0" + dtparts[1]).substr(-2) + "-" + ("0" + dtparts[2]).substr(-2);
          }
        }
      }
      if (parts[1]) {
        parts.shift();
        let time = parts.join(" ");
        result2.time = parseTime(time, pmDesignator);
      }
      return result2;
    }
    function parseHead(head, rights) {
      let space = rights > 0;
      let count = 1;
      let from = 0;
      let to = 0;
      let result2 = [];
      for (let i = 0; i < head.length; i++) {
        if (count <= rights) {
          if (/\s/.test(head[i]) && !space) {
            to = i - 1;
            result2.push({
              from,
              to: to + 1,
              cap: head.substring(from, to + 1)
            });
            from = to + 2;
            count++;
          }
          space = head[i] === " ";
        } else {
          if (!/\s/.test(head[i]) && space) {
            to = i - 1;
            if (from < to) {
              result2.push({
                from,
                to,
                cap: head.substring(from, to)
              });
            }
            from = to + 1;
            count++;
          }
          space = head[i] === " ";
        }
      }
      to = 5e3;
      result2.push({
        from,
        to,
        cap: head.substring(from, to)
      });
      let len = result2.length;
      for (let i = 0; i < len; i++) {
        if (result2[i].cap.replace(/\s/g, "").length === 0) {
          if (i + 1 < len) {
            result2[i].to = result2[i + 1].to;
            result2[i].cap = result2[i].cap + result2[i + 1].cap;
            result2.splice(i + 1, 1);
            len = len - 1;
          }
        }
      }
      return result2;
    }
    function findObjectByKey(array, key, value) {
      for (let i = 0; i < array.length; i++) {
        if (array[i][key] === value) {
          return i;
        }
      }
      return -1;
    }
    function getPowershell() {
      _powerShell = "powershell.exe";
      if (_windows) {
        const defaultPath = `${WINDIR}\\system32\\WindowsPowerShell\\v1.0\\powershell.exe`;
        if (fs2.existsSync(defaultPath)) {
          _powerShell = defaultPath;
        }
      }
    }
    function getWmic() {
      if (os.type() === "Windows_NT" && !wmicPath) {
        wmicPath = WINDIR + "\\system32\\wbem\\wmic.exe";
        if (!fs2.existsSync(wmicPath)) {
          try {
            const wmicPathArray = execSync("WHERE WMIC", execOptsWin).toString().split("\r\n");
            if (wmicPathArray && wmicPathArray.length) {
              wmicPath = wmicPathArray[0];
            } else {
              wmicPath = "wmic";
            }
          } catch (e) {
            wmicPath = "wmic";
          }
        }
      }
      return wmicPath;
    }
    function wmic(command) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          try {
            powerShell(getWmic() + " " + command).then((stdout) => {
              resolve(stdout, "");
            });
          } catch (e) {
            resolve("", e);
          }
        });
      });
    }
    function getVboxmanage() {
      return _windows ? `"${process.env.VBOX_INSTALL_PATH || process.env.VBOX_MSI_INSTALL_PATH}\\VBoxManage.exe"` : "vboxmanage";
    }
    function powerShellProceedResults(data) {
      let id = "";
      let parts;
      let res = "";
      if (data.indexOf(_psCmdStart) >= 0) {
        parts = data.split(_psCmdStart);
        const parts2 = parts[1].split(_psIdSeperator);
        id = parts2[0];
        if (parts2.length > 1) {
          data = parts2.slice(1).join(_psIdSeperator);
        }
      }
      if (data.indexOf(_psCmdSeperator) >= 0) {
        parts = data.split(_psCmdSeperator);
        res = parts[0];
      }
      let remove = -1;
      for (let i = 0; i < _psCmds.length; i++) {
        if (_psCmds[i].id === id) {
          remove = i;
          _psCmds[i].callback(res);
        }
      }
      if (remove >= 0) {
        _psCmds.splice(remove, 1);
      }
    }
    function powerShellStart() {
      if (!_psChild) {
        _psChild = spawn(_powerShell, ["-NoProfile", "-NoLogo", "-InputFormat", "Text", "-NoExit", "-Command", "-"], {
          stdio: "pipe",
          windowsHide: true,
          maxBuffer: 1024 * 2e4,
          encoding: "UTF-8",
          env: Object.assign({}, process.env, { LANG: "en_US.UTF-8" })
        });
        if (_psChild && _psChild.pid) {
          _psPersistent = true;
          _psChild.stdout.on("data", function(data) {
            _psResult = _psResult + data.toString("utf8");
            if (data.indexOf(_psCmdSeperator) >= 0) {
              powerShellProceedResults(_psResult);
              _psResult = "";
            }
          });
          _psChild.stderr.on("data", function() {
            powerShellProceedResults(_psResult + _psError);
          });
          _psChild.on("error", function() {
            powerShellProceedResults(_psResult + _psError);
          });
          _psChild.on("close", function() {
            if (_psChild) {
              _psChild.kill();
            }
          });
        }
      }
    }
    function powerShellRelease() {
      try {
        if (_psChild) {
          _psChild.stdin.write("exit" + os.EOL);
          _psChild.stdin.end();
          _psPersistent = false;
        }
      } catch (e) {
        if (_psChild) {
          _psChild.kill();
        }
      }
      _psChild = null;
    }
    function powerShell(cmd) {
      if (_psPersistent) {
        const id = Math.random().toString(36).substring(2, 12);
        return new Promise((resolve) => {
          process.nextTick(() => {
            function callback(data) {
              resolve(data);
            }
            _psCmds.push({
              id,
              cmd,
              callback,
              start: /* @__PURE__ */ new Date()
            });
            try {
              if (_psChild && _psChild.pid) {
                _psChild.stdin.write(_psToUTF8 + "echo " + _psCmdStart + id + _psIdSeperator + "; " + os.EOL + cmd + os.EOL + "echo " + _psCmdSeperator + os.EOL);
              }
            } catch (e) {
              resolve("");
            }
          });
        });
      } else {
        let result2 = "";
        return new Promise((resolve) => {
          process.nextTick(() => {
            try {
              const child = spawn(_powerShell, ["-NoProfile", "-NoLogo", "-InputFormat", "Text", "-NoExit", "-ExecutionPolicy", "Unrestricted", "-Command", "-"], {
                stdio: "pipe",
                windowsHide: true,
                maxBuffer: 1024 * 2e4,
                encoding: "UTF-8",
                env: Object.assign({}, process.env, { LANG: "en_US.UTF-8" })
              });
              if (child && !child.pid) {
                child.on("error", function() {
                  resolve(result2);
                });
              }
              if (child && child.pid) {
                child.stdout.on("data", function(data) {
                  result2 = result2 + data.toString("utf8");
                });
                child.stderr.on("data", function() {
                  child.kill();
                  resolve(result2);
                });
                child.on("close", function() {
                  child.kill();
                  resolve(result2);
                });
                child.on("error", function() {
                  child.kill();
                  resolve(result2);
                });
                try {
                  child.stdin.write(_psToUTF8 + cmd + os.EOL);
                  child.stdin.write("exit" + os.EOL);
                  child.stdin.end();
                } catch (e) {
                  child.kill();
                  resolve(result2);
                }
              } else {
                resolve(result2);
              }
            } catch (e) {
              resolve(result2);
            }
          });
        });
      }
    }
    function execSafe(cmd, args, options) {
      let result2 = "";
      options = options || {};
      return new Promise((resolve) => {
        process.nextTick(() => {
          try {
            const child = spawn(cmd, args, options);
            if (child && !child.pid) {
              child.on("error", function() {
                resolve(result2);
              });
            }
            if (child && child.pid) {
              child.stdout.on("data", function(data) {
                result2 += data.toString();
              });
              child.on("close", function() {
                child.kill();
                resolve(result2);
              });
              child.on("error", function() {
                child.kill();
                resolve(result2);
              });
            } else {
              resolve(result2);
            }
          } catch (e) {
            resolve(result2);
          }
        });
      });
    }
    function getCodepage() {
      if (_windows) {
        if (!codepage) {
          try {
            const stdout = execSync("chcp", execOptsWin);
            const lines = stdout.toString().split("\r\n");
            const parts = lines[0].split(":");
            codepage = parts.length > 1 ? parts[1].replace(".", "").trim() : "";
          } catch (err) {
            codepage = "437";
          }
        }
        return codepage;
      }
      if (_linux || _darwin || _freebsd || _openbsd || _netbsd) {
        if (!codepage) {
          try {
            const stdout = execSync("echo $LANG", execOptsLinux);
            const lines = stdout.toString().split("\r\n");
            const parts = lines[0].split(".");
            codepage = parts.length > 1 ? parts[1].trim() : "";
            if (!codepage) {
              codepage = "UTF-8";
            }
          } catch (err) {
            codepage = "UTF-8";
          }
        }
        return codepage;
      }
    }
    function smartMonToolsInstalled() {
      if (_smartMonToolsInstalled !== null) {
        return _smartMonToolsInstalled;
      }
      _smartMonToolsInstalled = false;
      if (_windows) {
        try {
          const pathArray = execSync("WHERE smartctl 2>nul", execOptsWin).toString().split("\r\n");
          if (pathArray && pathArray.length) {
            _smartMonToolsInstalled = pathArray[0].indexOf(":\\") >= 0;
          } else {
            _smartMonToolsInstalled = false;
          }
        } catch (e) {
          _smartMonToolsInstalled = false;
        }
      }
      if (_linux || _darwin || _freebsd || _openbsd || _netbsd) {
        try {
          const pathArray = execSync("which smartctl 2>/dev/null", execOptsLinux).toString().split("\r\n");
          _smartMonToolsInstalled = pathArray.length > 0;
        } catch (e) {
          util.noop();
        }
      }
      return _smartMonToolsInstalled;
    }
    function isRaspberry(cpuinfo) {
      const PI_MODEL_NO = [
        "BCM2708",
        "BCM2709",
        "BCM2710",
        "BCM2711",
        "BCM2712",
        "BCM2835",
        "BCM2836",
        "BCM2837",
        "BCM2837B0"
      ];
      if (_rpi_cpuinfo !== null) {
        cpuinfo = _rpi_cpuinfo;
      } else if (cpuinfo === void 0) {
        try {
          cpuinfo = fs2.readFileSync("/proc/cpuinfo", { encoding: "utf8" }).toString().split("\n");
          _rpi_cpuinfo = cpuinfo;
        } catch (e) {
          return false;
        }
      }
      const hardware = getValue(cpuinfo, "hardware");
      const model = getValue(cpuinfo, "model");
      return hardware && PI_MODEL_NO.indexOf(hardware) > -1 || model && model.indexOf("Raspberry Pi") > -1;
    }
    function isRaspbian() {
      let osrelease = [];
      try {
        osrelease = fs2.readFileSync("/etc/os-release", { encoding: "utf8" }).toString().split("\n");
      } catch (e) {
        return false;
      }
      const id = getValue(osrelease, "id", "=");
      return id && id.indexOf("raspbian") > -1;
    }
    function execWin(cmd, opts, callback) {
      if (!callback) {
        callback = opts;
        opts = execOptsWin;
      }
      let newCmd = "chcp 65001 > nul && cmd /C " + cmd + " && chcp " + codepage + " > nul";
      exec(newCmd, opts, function(error, stdout) {
        callback(error, stdout);
      });
    }
    function darwinXcodeExists() {
      const cmdLineToolsExists = fs2.existsSync("/Library/Developer/CommandLineTools/usr/bin/");
      const xcodeAppExists = fs2.existsSync("/Applications/Xcode.app/Contents/Developer/Tools");
      const xcodeExists = fs2.existsSync("/Library/Developer/Xcode/");
      return cmdLineToolsExists || xcodeExists || xcodeAppExists;
    }
    function nanoSeconds() {
      const time = process.hrtime();
      if (!Array.isArray(time) || time.length !== 2) {
        return 0;
      }
      return +time[0] * 1e9 + +time[1];
    }
    function countUniqueLines(lines, startingWith) {
      startingWith = startingWith || "";
      const uniqueLines = [];
      lines.forEach((line) => {
        if (line.startsWith(startingWith)) {
          if (uniqueLines.indexOf(line) === -1) {
            uniqueLines.push(line);
          }
        }
      });
      return uniqueLines.length;
    }
    function countLines(lines, startingWith) {
      startingWith = startingWith || "";
      const uniqueLines = [];
      lines.forEach((line) => {
        if (line.startsWith(startingWith)) {
          uniqueLines.push(line);
        }
      });
      return uniqueLines.length;
    }
    function sanitizeShellString(str, strict) {
      if (typeof strict === "undefined") {
        strict = false;
      }
      const s = str || "";
      let result2 = "";
      const l = mathMin(s.length, 2e3);
      for (let i = 0; i <= l; i++) {
        if (!(s[i] === void 0 || s[i] === ">" || s[i] === "<" || s[i] === "*" || s[i] === "?" || s[i] === "[" || s[i] === "]" || s[i] === "|" || s[i] === "\u02DA" || s[i] === "$" || s[i] === ";" || s[i] === "&" || s[i] === "]" || s[i] === "#" || s[i] === "\\" || s[i] === "	" || s[i] === "\n" || s[i] === "\r" || s[i] === "'" || s[i] === "`" || s[i] === '"' || s[i].length > 1 || strict && s[i] === "(" || strict && s[i] === ")" || strict && s[i] === "@" || strict && s[i] === " " || strict && s[i] == "{" || strict && s[i] == ";" || strict && s[i] == "}")) {
          result2 = result2 + s[i];
        }
      }
      return result2;
    }
    function isPrototypePolluted() {
      const s = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
      let notPolluted = true;
      let st = "";
      try {
        st.__proto__.replace = stringReplace;
        st.__proto__.toLowerCase = stringToLower;
        st.__proto__.toString = stringToString;
        st.__proto__.substr = stringSubstr;
        st.__proto__.substring = stringSubstring;
        st.__proto__.trim = stringTrim;
        st.__proto__.startsWith = stringStartWith;
      } catch (e) {
        Object.setPrototypeOf(st, stringObj);
      }
      notPolluted = notPolluted || s.length !== 62;
      const ms = Date.now();
      if (typeof ms === "number" && ms > 16e11) {
        const l = ms % 100 + 15;
        for (let i = 0; i < l; i++) {
          const r = Math.random() * 61.99999999 + 1;
          const rs = parseInt(Math.floor(r).toString(), 10);
          const rs2 = parseInt(r.toString().split(".")[0], 10);
          const q = Math.random() * 61.99999999 + 1;
          const qs = parseInt(Math.floor(q).toString(), 10);
          const qs2 = parseInt(q.toString().split(".")[0], 10);
          notPolluted = notPolluted && r !== q;
          notPolluted = notPolluted && rs === rs2 && qs === qs2;
          st += s[rs - 1];
        }
        notPolluted = notPolluted && st.length === l;
        let p = Math.random() * l * 0.9999999999;
        let stm = st.substr(0, p) + " " + st.substr(p, 2e3);
        try {
          stm.__proto__.replace = stringReplace;
        } catch (e) {
          Object.setPrototypeOf(stm, stringObj);
        }
        let sto = stm.replace(/ /g, "");
        notPolluted = notPolluted && st === sto;
        p = Math.random() * l * 0.9999999999;
        stm = st.substr(0, p) + "{" + st.substr(p, 2e3);
        sto = stm.replace(/{/g, "");
        notPolluted = notPolluted && st === sto;
        p = Math.random() * l * 0.9999999999;
        stm = st.substr(0, p) + "*" + st.substr(p, 2e3);
        sto = stm.replace(/\*/g, "");
        notPolluted = notPolluted && st === sto;
        p = Math.random() * l * 0.9999999999;
        stm = st.substr(0, p) + "$" + st.substr(p, 2e3);
        sto = stm.replace(/\$/g, "");
        notPolluted = notPolluted && st === sto;
        const stl = st.toLowerCase();
        notPolluted = notPolluted && stl.length === l && stl[l - 1] && !stl[l];
        for (let i = 0; i < l; i++) {
          const s1 = st[i];
          try {
            s1.__proto__.toLowerCase = stringToLower;
          } catch (e) {
            Object.setPrototypeOf(st, stringObj);
          }
          const s2 = stl ? stl[i] : "";
          const s1l = s1.toLowerCase();
          notPolluted = notPolluted && s1l[0] === s2 && s1l[0] && !s1l[1];
        }
      }
      return !notPolluted;
    }
    function hex2bin(hex) {
      return ("00000000" + parseInt(hex, 16).toString(2)).substr(-8);
    }
    function getFilesInPath(source) {
      const lstatSync = fs2.lstatSync;
      const readdirSync = fs2.readdirSync;
      const join = path2.join;
      function isDirectory(source2) {
        return lstatSync(source2).isDirectory();
      }
      function isFile(source2) {
        return lstatSync(source2).isFile();
      }
      function getDirectories(source2) {
        return readdirSync(source2).map(function(name) {
          return join(source2, name);
        }).filter(isDirectory);
      }
      function getFiles(source2) {
        return readdirSync(source2).map(function(name) {
          return join(source2, name);
        }).filter(isFile);
      }
      function getFilesRecursively(source2) {
        try {
          let dirs = getDirectories(source2);
          let files = dirs.map(function(dir) {
            return getFilesRecursively(dir);
          }).reduce(function(a, b) {
            return a.concat(b);
          }, []);
          return files.concat(getFiles(source2));
        } catch (e) {
          return [];
        }
      }
      if (fs2.existsSync(source)) {
        return getFilesRecursively(source);
      } else {
        return [];
      }
    }
    function decodePiCpuinfo(lines) {
      if (_rpi_cpuinfo === null) {
        _rpi_cpuinfo = lines;
      } else if (lines === void 0) {
        lines = _rpi_cpuinfo;
      }
      const oldRevisionCodes = {
        "0002": {
          type: "B",
          revision: "1.0",
          memory: 256,
          manufacturer: "Egoman",
          processor: "BCM2835"
        },
        "0003": {
          type: "B",
          revision: "1.0",
          memory: 256,
          manufacturer: "Egoman",
          processor: "BCM2835"
        },
        "0004": {
          type: "B",
          revision: "2.0",
          memory: 256,
          manufacturer: "Sony UK",
          processor: "BCM2835"
        },
        "0005": {
          type: "B",
          revision: "2.0",
          memory: 256,
          manufacturer: "Qisda",
          processor: "BCM2835"
        },
        "0006": {
          type: "B",
          revision: "2.0",
          memory: 256,
          manufacturer: "Egoman",
          processor: "BCM2835"
        },
        "0007": {
          type: "A",
          revision: "2.0",
          memory: 256,
          manufacturer: "Egoman",
          processor: "BCM2835"
        },
        "0008": {
          type: "A",
          revision: "2.0",
          memory: 256,
          manufacturer: "Sony UK",
          processor: "BCM2835"
        },
        "0009": {
          type: "A",
          revision: "2.0",
          memory: 256,
          manufacturer: "Qisda",
          processor: "BCM2835"
        },
        "000d": {
          type: "B",
          revision: "2.0",
          memory: 512,
          manufacturer: "Egoman",
          processor: "BCM2835"
        },
        "000e": {
          type: "B",
          revision: "2.0",
          memory: 512,
          manufacturer: "Sony UK",
          processor: "BCM2835"
        },
        "000f": {
          type: "B",
          revision: "2.0",
          memory: 512,
          manufacturer: "Egoman",
          processor: "BCM2835"
        },
        "0010": {
          type: "B+",
          revision: "1.2",
          memory: 512,
          manufacturer: "Sony UK",
          processor: "BCM2835"
        },
        "0011": {
          type: "CM1",
          revision: "1.0",
          memory: 512,
          manufacturer: "Sony UK",
          processor: "BCM2835"
        },
        "0012": {
          type: "A+",
          revision: "1.1",
          memory: 256,
          manufacturer: "Sony UK",
          processor: "BCM2835"
        },
        "0013": {
          type: "B+",
          revision: "1.2",
          memory: 512,
          manufacturer: "Embest",
          processor: "BCM2835"
        },
        "0014": {
          type: "CM1",
          revision: "1.0",
          memory: 512,
          manufacturer: "Embest",
          processor: "BCM2835"
        },
        "0015": {
          type: "A+",
          revision: "1.1",
          memory: 256,
          manufacturer: "512MB	Embest",
          processor: "BCM2835"
        }
      };
      const processorList = [
        "BCM2835",
        "BCM2836",
        "BCM2837",
        "BCM2711",
        "BCM2712"
      ];
      const manufacturerList = [
        "Sony UK",
        "Egoman",
        "Embest",
        "Sony Japan",
        "Embest",
        "Stadium"
      ];
      const typeList = {
        "00": "A",
        "01": "B",
        "02": "A+",
        "03": "B+",
        "04": "2B",
        "05": "Alpha (early prototype)",
        "06": "CM1",
        "08": "3B",
        "09": "Zero",
        "0a": "CM3",
        "0c": "Zero W",
        "0d": "3B+",
        "0e": "3A+",
        "0f": "Internal use only",
        "10": "CM3+",
        "11": "4B",
        "12": "Zero 2 W",
        "13": "400",
        "14": "CM4",
        "15": "CM4S",
        "16": "Internal use only",
        "17": "5",
        "18": "CM5",
        "19": "500",
        "1a": "CM5 Lite"
      };
      const revisionCode = getValue(lines, "revision", ":", true);
      const model = getValue(lines, "model:", ":", true);
      const serial = getValue(lines, "serial", ":", true);
      let result2 = {};
      if ({}.hasOwnProperty.call(oldRevisionCodes, revisionCode)) {
        result2 = {
          model,
          serial,
          revisionCode,
          memory: oldRevisionCodes[revisionCode].memory,
          manufacturer: oldRevisionCodes[revisionCode].manufacturer,
          processor: oldRevisionCodes[revisionCode].processor,
          type: oldRevisionCodes[revisionCode].type,
          revision: oldRevisionCodes[revisionCode].revision
        };
      } else {
        const revision = ("00000000" + getValue(lines, "revision", ":", true).toLowerCase()).substr(-8);
        const memSizeCode = parseInt(hex2bin(revision.substr(2, 1)).substr(5, 3), 2) || 0;
        const manufacturer = manufacturerList[parseInt(revision.substr(3, 1), 10)];
        const processor = processorList[parseInt(revision.substr(4, 1), 10)];
        const typeCode = revision.substr(5, 2);
        result2 = {
          model,
          serial,
          revisionCode,
          memory: 256 * Math.pow(2, memSizeCode),
          manufacturer,
          processor,
          type: {}.hasOwnProperty.call(typeList, typeCode) ? typeList[typeCode] : "",
          revision: "1." + revision.substr(7, 1)
        };
      }
      return result2;
    }
    function getRpiGpu(cpuinfo) {
      if (_rpi_cpuinfo === null && cpuinfo !== void 0) {
        _rpi_cpuinfo = cpuinfo;
      } else if (cpuinfo === void 0 && _rpi_cpuinfo !== null) {
        cpuinfo = _rpi_cpuinfo;
      } else {
        try {
          cpuinfo = fs2.readFileSync("/proc/cpuinfo", { encoding: "utf8" }).toString().split("\n");
          _rpi_cpuinfo = cpuinfo;
        } catch (e) {
          return false;
        }
      }
      const rpi = decodePiCpuinfo(cpuinfo);
      if (rpi.type === "4B" || rpi.type === "CM4" || rpi.type === "CM4S" || rpi.type === "400") {
        return "VideoCore VI";
      }
      if (rpi.type === "5" || rpi.type === "500") {
        return "VideoCore VII";
      }
      return "VideoCore IV";
    }
    function promiseAll(promises) {
      const resolvingPromises = promises.map(function(promise) {
        return new Promise(function(resolve) {
          let payload = new Array(2);
          promise.then(function(result2) {
            payload[0] = result2;
          }).catch(function(error) {
            payload[1] = error;
          }).then(function() {
            resolve(payload);
          });
        });
      });
      const errors = [];
      const results = [];
      return Promise.all(resolvingPromises).then(function(items) {
        items.forEach(function(payload) {
          if (payload[1]) {
            errors.push(payload[1]);
            results.push(null);
          } else {
            errors.push(null);
            results.push(payload[0]);
          }
        });
        return {
          errors,
          results
        };
      });
    }
    function promisify(nodeStyleFunction) {
      return function() {
        const args = Array.prototype.slice.call(arguments);
        return new Promise(function(resolve, reject) {
          args.push(function(err, data) {
            if (err) {
              reject(err);
            } else {
              resolve(data);
            }
          });
          nodeStyleFunction.apply(null, args);
        });
      };
    }
    function promisifySave(nodeStyleFunction) {
      return function() {
        const args = Array.prototype.slice.call(arguments);
        return new Promise(function(resolve) {
          args.push(function(err, data) {
            resolve(data);
          });
          nodeStyleFunction.apply(null, args);
        });
      };
    }
    function linuxVersion() {
      let result2 = "";
      if (_linux) {
        try {
          result2 = execSync("uname -v", execOptsLinux).toString();
        } catch (e) {
          result2 = "";
        }
      }
      return result2;
    }
    function plistParser(xmlStr) {
      const tags = ["array", "dict", "key", "string", "integer", "date", "real", "data", "boolean", "arrayEmpty"];
      const startStr = "<plist version";
      let pos = xmlStr.indexOf(startStr);
      let len = xmlStr.length;
      while (xmlStr[pos] !== ">" && pos < len) {
        pos++;
      }
      let depth = 0;
      let inTagStart = false;
      let inTagContent = false;
      let inTagEnd = false;
      let metaData = [{ tagStart: "", tagEnd: "", tagContent: "", key: "", data: null }];
      let c = "";
      let cn = xmlStr[pos];
      while (pos < len) {
        c = cn;
        if (pos + 1 < len) {
          cn = xmlStr[pos + 1];
        }
        if (c === "<") {
          inTagContent = false;
          if (cn === "/") {
            inTagEnd = true;
          } else if (metaData[depth].tagStart) {
            metaData[depth].tagContent = "";
            if (!metaData[depth].data) {
              metaData[depth].data = metaData[depth].tagStart === "array" ? [] : {};
            }
            depth++;
            metaData.push({ tagStart: "", tagEnd: "", tagContent: "", key: null, data: null });
            inTagStart = true;
            inTagContent = false;
          } else if (!inTagStart) {
            inTagStart = true;
          }
        } else if (c === ">") {
          if (metaData[depth].tagStart === "true/") {
            inTagStart = false;
            inTagEnd = true;
            metaData[depth].tagStart = "";
            metaData[depth].tagEnd = "/boolean";
            metaData[depth].data = true;
          }
          if (metaData[depth].tagStart === "false/") {
            inTagStart = false;
            inTagEnd = true;
            metaData[depth].tagStart = "";
            metaData[depth].tagEnd = "/boolean";
            metaData[depth].data = false;
          }
          if (metaData[depth].tagStart === "array/") {
            inTagStart = false;
            inTagEnd = true;
            metaData[depth].tagStart = "";
            metaData[depth].tagEnd = "/arrayEmpty";
            metaData[depth].data = [];
          }
          if (inTagContent) {
            inTagContent = false;
          }
          if (inTagStart) {
            inTagStart = false;
            inTagContent = true;
            if (metaData[depth].tagStart === "array") {
              metaData[depth].data = [];
            }
            if (metaData[depth].tagStart === "dict") {
              metaData[depth].data = {};
            }
          }
          if (inTagEnd) {
            inTagEnd = false;
            if (metaData[depth].tagEnd && tags.indexOf(metaData[depth].tagEnd.substr(1)) >= 0) {
              if (metaData[depth].tagEnd === "/dict" || metaData[depth].tagEnd === "/array") {
                if (depth > 1 && metaData[depth - 2].tagStart === "array") {
                  metaData[depth - 2].data.push(metaData[depth - 1].data);
                }
                if (depth > 1 && metaData[depth - 2].tagStart === "dict") {
                  metaData[depth - 2].data[metaData[depth - 1].key] = metaData[depth - 1].data;
                }
                depth--;
                metaData.pop();
                metaData[depth].tagContent = "";
                metaData[depth].tagStart = "";
                metaData[depth].tagEnd = "";
              } else {
                if (metaData[depth].tagEnd === "/key" && metaData[depth].tagContent) {
                  metaData[depth].key = metaData[depth].tagContent;
                } else {
                  if (metaData[depth].tagEnd === "/real" && metaData[depth].tagContent) {
                    metaData[depth].data = parseFloat(metaData[depth].tagContent) || 0;
                  }
                  if (metaData[depth].tagEnd === "/integer" && metaData[depth].tagContent) {
                    metaData[depth].data = parseInt(metaData[depth].tagContent) || 0;
                  }
                  if (metaData[depth].tagEnd === "/string" && metaData[depth].tagContent) {
                    metaData[depth].data = metaData[depth].tagContent || "";
                  }
                  if (metaData[depth].tagEnd === "/boolean") {
                    metaData[depth].data = metaData[depth].tagContent || false;
                  }
                  if (metaData[depth].tagEnd === "/arrayEmpty") {
                    metaData[depth].data = metaData[depth].tagContent || [];
                  }
                  if (depth > 0 && metaData[depth - 1].tagStart === "array") {
                    metaData[depth - 1].data.push(metaData[depth].data);
                  }
                  if (depth > 0 && metaData[depth - 1].tagStart === "dict") {
                    metaData[depth - 1].data[metaData[depth].key] = metaData[depth].data;
                  }
                }
                metaData[depth].tagContent = "";
                metaData[depth].tagStart = "";
                metaData[depth].tagEnd = "";
              }
            }
            metaData[depth].tagEnd = "";
            inTagStart = false;
            inTagContent = false;
          }
        } else {
          if (inTagStart) {
            metaData[depth].tagStart += c;
          }
          if (inTagEnd) {
            metaData[depth].tagEnd += c;
          }
          if (inTagContent) {
            metaData[depth].tagContent += c;
          }
        }
        pos++;
      }
      return metaData[0].data;
    }
    function strIsNumeric(str) {
      return typeof str === "string" && !isNaN(str) && !isNaN(parseFloat(str));
    }
    function plistReader(output) {
      const lines = output.split("\n");
      for (let i = 0; i < lines.length; i++) {
        if (lines[i].indexOf(" = ") >= 0) {
          const lineParts = lines[i].split(" = ");
          lineParts[0] = lineParts[0].trim();
          if (!lineParts[0].startsWith('"')) {
            lineParts[0] = '"' + lineParts[0] + '"';
          }
          lineParts[1] = lineParts[1].trim();
          if (lineParts[1].indexOf('"') === -1 && lineParts[1].endsWith(";")) {
            const valueString = lineParts[1].substring(0, lineParts[1].length - 1);
            if (!strIsNumeric(valueString)) {
              lineParts[1] = `"${valueString}";`;
            }
          }
          if (lineParts[1].indexOf('"') >= 0 && lineParts[1].endsWith(";")) {
            const valueString = lineParts[1].substring(0, lineParts[1].length - 1).replace(/"/g, "");
            if (strIsNumeric(valueString)) {
              lineParts[1] = `${valueString};`;
            }
          }
          lines[i] = lineParts.join(" : ");
        }
        lines[i] = lines[i].replace(/\(/g, "[").replace(/\)/g, "]").replace(/;/g, ",").trim();
        if (lines[i].startsWith("}") && lines[i - 1] && lines[i - 1].endsWith(",")) {
          lines[i - 1] = lines[i - 1].substring(0, lines[i - 1].length - 1);
        }
      }
      output = lines.join("");
      let obj = {};
      try {
        obj = JSON.parse(output);
      } catch (e) {
        noop();
      }
      return obj;
    }
    function semverCompare(v1, v2) {
      let res = 0;
      const parts1 = v1.split(".");
      const parts2 = v2.split(".");
      if (parts1[0] < parts2[0]) {
        res = 1;
      } else if (parts1[0] > parts2[0]) {
        res = -1;
      } else if (parts1[0] === parts2[0] && parts1.length >= 2 && parts2.length >= 2) {
        if (parts1[1] < parts2[1]) {
          res = 1;
        } else if (parts1[1] > parts2[1]) {
          res = -1;
        } else if (parts1[1] === parts2[1]) {
          if (parts1.length >= 3 && parts2.length >= 3) {
            if (parts1[2] < parts2[2]) {
              res = 1;
            } else if (parts1[2] > parts2[2]) {
              res = -1;
            }
          } else if (parts2.length >= 3) {
            res = 1;
          }
        }
      }
      return res;
    }
    function getAppleModel(key) {
      const appleModelIds = [
        {
          key: "Mac15,12",
          name: "MacBook Air",
          size: "13-inch",
          processor: "M3",
          year: "2024",
          additional: ""
        },
        {
          key: "Mac14,15",
          name: "MacBook Air",
          size: "15-inch",
          processor: "M2",
          year: "2024",
          additional: ""
        },
        {
          key: "Mac14,2",
          name: "MacBook Air",
          size: "13-inch",
          processor: "M2",
          year: "2022",
          additional: ""
        },
        {
          key: "MacBookAir10,1",
          name: "MacBook Air",
          size: "13-inch",
          processor: "M1",
          year: "2020",
          additional: ""
        },
        {
          key: "MacBookAir9,1",
          name: "MacBook Air",
          size: "13-inch",
          processor: "",
          year: "2020",
          additional: ""
        },
        {
          key: "MacBookAir8,2",
          name: "MacBook Air",
          size: "13-inch",
          processor: "",
          year: "2019",
          additional: ""
        },
        {
          key: "MacBookAir8,1",
          name: "MacBook Air",
          size: "13-inch",
          processor: "",
          year: "2018",
          additional: ""
        },
        {
          key: "MacBookAir7,2",
          name: "MacBook Air",
          size: "13-inch",
          processor: "",
          year: "2017",
          additional: ""
        },
        {
          key: "MacBookAir7,2",
          name: "MacBook Air",
          size: "13-inch",
          processor: "",
          year: "Early 2015",
          additional: ""
        },
        {
          key: "MacBookAir7,1",
          name: "MacBook Air",
          size: "11-inch",
          processor: "",
          year: "Early 2015",
          additional: ""
        },
        {
          key: "MacBookAir6,2",
          name: "MacBook Air",
          size: "13-inch",
          processor: "",
          year: "Early 2014",
          additional: ""
        },
        {
          key: "MacBookAir6,1",
          name: "MacBook Air",
          size: "11-inch",
          processor: "",
          year: "Early 2014",
          additional: ""
        },
        {
          key: "MacBookAir6,2",
          name: "MacBook Air",
          size: "13-inch",
          processor: "",
          year: "Mid 2013",
          additional: ""
        },
        {
          key: "MacBookAir6,1",
          name: "MacBook Air",
          size: "11-inch",
          processor: "",
          year: "Mid 2013",
          additional: ""
        },
        {
          key: "MacBookAir5,2",
          name: "MacBook Air",
          size: "13-inch",
          processor: "",
          year: "Mid 2012",
          additional: ""
        },
        {
          key: "MacBookAir5,1",
          name: "MacBook Air",
          size: "11-inch",
          processor: "",
          year: "Mid 2012",
          additional: ""
        },
        {
          key: "MacBookAir4,2",
          name: "MacBook Air",
          size: "13-inch",
          processor: "",
          year: "Mid 2011",
          additional: ""
        },
        {
          key: "MacBookAir4,1",
          name: "MacBook Air",
          size: "11-inch",
          processor: "",
          year: "Mid 2011",
          additional: ""
        },
        {
          key: "MacBookAir3,2",
          name: "MacBook Air",
          size: "13-inch",
          processor: "",
          year: "Late 2010",
          additional: ""
        },
        {
          key: "MacBookAir3,1",
          name: "MacBook Air",
          size: "11-inch",
          processor: "",
          year: "Late 2010",
          additional: ""
        },
        {
          key: "MacBookAir2,1",
          name: "MacBook Air",
          size: "13-inch",
          processor: "",
          year: "Mid 2009",
          additional: ""
        },
        {
          key: "Mac16,1",
          name: "MacBook Pro",
          size: "14-inch",
          processor: "M4",
          year: "2024",
          additional: ""
        },
        {
          key: "Mac16,6",
          name: "MacBook Pro",
          size: "14-inch",
          processor: "M4 Pro",
          year: "2024",
          additional: ""
        },
        {
          key: "Mac16,8",
          name: "MacBook Pro",
          size: "14-inch",
          processor: "M4 Max",
          year: "2024",
          additional: ""
        },
        {
          key: "Mac16,5",
          name: "MacBook Pro",
          size: "16-inch",
          processor: "M4 Pro",
          year: "2024",
          additional: ""
        },
        {
          key: "Mac16,6",
          name: "MacBook Pro",
          size: "16-inch",
          processor: "M4 Max",
          year: "2024",
          additional: ""
        },
        {
          key: "Mac15,3",
          name: "MacBook Pro",
          size: "14-inch",
          processor: "M3",
          year: "Nov 2023",
          additional: ""
        },
        {
          key: "Mac15,6",
          name: "MacBook Pro",
          size: "14-inch",
          processor: "M3 Pro",
          year: "Nov 2023",
          additional: ""
        },
        {
          key: "Mac15,8",
          name: "MacBook Pro",
          size: "14-inch",
          processor: "M3 Pro",
          year: "Nov 2023",
          additional: ""
        },
        {
          key: "Mac15,10",
          name: "MacBook Pro",
          size: "14-inch",
          processor: "M3 Max",
          year: "Nov 2023",
          additional: ""
        },
        {
          key: "Mac15,7",
          name: "MacBook Pro",
          size: "16-inch",
          processor: "M3 Pro",
          year: "Nov 2023",
          additional: ""
        },
        {
          key: "Mac15,9",
          name: "MacBook Pro",
          size: "16-inch",
          processor: "M3 Pro",
          year: "Nov 2023",
          additional: ""
        },
        {
          key: "Mac15,11",
          name: "MacBook Pro",
          size: "16-inch",
          processor: "M3 Max",
          year: "Nov 2023",
          additional: ""
        },
        {
          key: "Mac14,5",
          name: "MacBook Pro",
          size: "14-inch",
          processor: "M2 Max",
          year: "2023",
          additional: ""
        },
        {
          key: "Mac14,9",
          name: "MacBook Pro",
          size: "14-inch",
          processor: "M2 Max",
          year: "2023",
          additional: ""
        },
        {
          key: "Mac14,6",
          name: "MacBook Pro",
          size: "16-inch",
          processor: "M2 Max",
          year: "2023",
          additional: ""
        },
        {
          key: "Mac14,10",
          name: "MacBook Pro",
          size: "16-inch",
          processor: "M2 Max",
          year: "2023",
          additional: ""
        },
        {
          key: "Mac14,7",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "M2",
          year: "2022",
          additional: ""
        },
        {
          key: "MacBookPro18,3",
          name: "MacBook Pro",
          size: "14-inch",
          processor: "M1 Pro",
          year: "2021",
          additional: ""
        },
        {
          key: "MacBookPro18,4",
          name: "MacBook Pro",
          size: "14-inch",
          processor: "M1 Max",
          year: "2021",
          additional: ""
        },
        {
          key: "MacBookPro18,1",
          name: "MacBook Pro",
          size: "16-inch",
          processor: "M1 Pro",
          year: "2021",
          additional: ""
        },
        {
          key: "MacBookPro18,2",
          name: "MacBook Pro",
          size: "16-inch",
          processor: "M1 Max",
          year: "2021",
          additional: ""
        },
        {
          key: "MacBookPro17,1",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "M1",
          year: "2020",
          additional: ""
        },
        {
          key: "MacBookPro16,3",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "",
          year: "2020",
          additional: "Two Thunderbolt 3 ports"
        },
        {
          key: "MacBookPro16,2",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "",
          year: "2020",
          additional: "Four Thunderbolt 3 ports"
        },
        {
          key: "MacBookPro16,1",
          name: "MacBook Pro",
          size: "16-inch",
          processor: "",
          year: "2019",
          additional: ""
        },
        {
          key: "MacBookPro16,4",
          name: "MacBook Pro",
          size: "16-inch",
          processor: "",
          year: "2019",
          additional: ""
        },
        {
          key: "MacBookPro15,3",
          name: "MacBook Pro",
          size: "15-inch",
          processor: "",
          year: "2019",
          additional: ""
        },
        {
          key: "MacBookPro15,2",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "",
          year: "2019",
          additional: ""
        },
        {
          key: "MacBookPro15,1",
          name: "MacBook Pro",
          size: "15-inch",
          processor: "",
          year: "2019",
          additional: ""
        },
        {
          key: "MacBookPro15,4",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "",
          year: "2019",
          additional: "Two Thunderbolt 3 ports"
        },
        {
          key: "MacBookPro15,1",
          name: "MacBook Pro",
          size: "15-inch",
          processor: "",
          year: "2018",
          additional: ""
        },
        {
          key: "MacBookPro15,2",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "",
          year: "2018",
          additional: "Four Thunderbolt 3 ports"
        },
        {
          key: "MacBookPro14,1",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "",
          year: "2017",
          additional: "Two Thunderbolt 3 ports"
        },
        {
          key: "MacBookPro14,2",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "",
          year: "2017",
          additional: "Four Thunderbolt 3 ports"
        },
        {
          key: "MacBookPro14,3",
          name: "MacBook Pro",
          size: "15-inch",
          processor: "",
          year: "2017",
          additional: ""
        },
        {
          key: "MacBookPro13,1",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "",
          year: "2016",
          additional: "Two Thunderbolt 3 ports"
        },
        {
          key: "MacBookPro13,2",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "",
          year: "2016",
          additional: "Four Thunderbolt 3 ports"
        },
        {
          key: "MacBookPro13,3",
          name: "MacBook Pro",
          size: "15-inch",
          processor: "",
          year: "2016",
          additional: ""
        },
        {
          key: "MacBookPro11,4",
          name: "MacBook Pro",
          size: "15-inch",
          processor: "",
          year: "Mid 2015",
          additional: ""
        },
        {
          key: "MacBookPro11,5",
          name: "MacBook Pro",
          size: "15-inch",
          processor: "",
          year: "Mid 2015",
          additional: ""
        },
        {
          key: "MacBookPro12,1",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "",
          year: "Early 2015",
          additional: ""
        },
        {
          key: "MacBookPro11,2",
          name: "MacBook Pro",
          size: "15-inch",
          processor: "",
          year: "Late 2013",
          additional: ""
        },
        {
          key: "MacBookPro11,3",
          name: "MacBook Pro",
          size: "15-inch",
          processor: "",
          year: "Late 2013",
          additional: ""
        },
        {
          key: "MacBookPro11,1",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "",
          year: "Late 2013",
          additional: ""
        },
        {
          key: "MacBookPro10,1",
          name: "MacBook Pro",
          size: "15-inch",
          processor: "",
          year: "Mid 2012",
          additional: ""
        },
        {
          key: "MacBookPro10,2",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "",
          year: "Late 2012",
          additional: ""
        },
        {
          key: "MacBookPro9,1",
          name: "MacBook Pro",
          size: "15-inch",
          processor: "",
          year: "Mid 2012",
          additional: ""
        },
        {
          key: "MacBookPro9,2",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "",
          year: "Mid 2012",
          additional: ""
        },
        {
          key: "MacBookPro8,3",
          name: "MacBook Pro",
          size: "17-inch",
          processor: "",
          year: "Early 2011",
          additional: ""
        },
        {
          key: "MacBookPro8,2",
          name: "MacBook Pro",
          size: "15-inch",
          processor: "",
          year: "Early 2011",
          additional: ""
        },
        {
          key: "MacBookPro8,1",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "",
          year: "Early 2011",
          additional: ""
        },
        {
          key: "MacBookPro6,1",
          name: "MacBook Pro",
          size: "17-inch",
          processor: "",
          year: "Mid 2010",
          additional: ""
        },
        {
          key: "MacBookPro6,2",
          name: "MacBook Pro",
          size: "15-inch",
          processor: "",
          year: "Mid 2010",
          additional: ""
        },
        {
          key: "MacBookPro7,1",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "",
          year: "Mid 2010",
          additional: ""
        },
        {
          key: "MacBookPro5,2",
          name: "MacBook Pro",
          size: "17-inch",
          processor: "",
          year: "Early 2009",
          additional: ""
        },
        {
          key: "MacBookPro5,3",
          name: "MacBook Pro",
          size: "15-inch",
          processor: "",
          year: "Mid 2009",
          additional: ""
        },
        {
          key: "MacBookPro5,5",
          name: "MacBook Pro",
          size: "13-inch",
          processor: "",
          year: "Mid 2009",
          additional: ""
        },
        {
          key: "MacBookPro5,1",
          name: "MacBook Pro",
          size: "15-inch",
          processor: "",
          year: "Late 2008",
          additional: ""
        },
        {
          key: "MacBookPro4,1",
          name: "MacBook Pro",
          size: "15-inch",
          processor: "",
          year: "Early 2008",
          additional: ""
        },
        {
          key: "MacBook10,1",
          name: "MacBook",
          size: "12-inch",
          processor: "",
          year: "2017",
          additional: ""
        },
        {
          key: "MacBook9,1",
          name: "MacBook",
          size: "12-inch",
          processor: "",
          year: "Early 2016",
          additional: ""
        },
        {
          key: "MacBook8,1",
          name: "MacBook",
          size: "12-inch",
          processor: "",
          year: "Early 2015",
          additional: ""
        },
        {
          key: "MacBook7,1",
          name: "MacBook",
          size: "13-inch",
          processor: "",
          year: "Mid 2010",
          additional: ""
        },
        {
          key: "MacBook6,1",
          name: "MacBook",
          size: "13-inch",
          processor: "",
          year: "Late 2009",
          additional: ""
        },
        {
          key: "MacBook5,2",
          name: "MacBook",
          size: "13-inch",
          processor: "",
          year: "Early 2009",
          additional: ""
        },
        {
          key: "Mac14,13",
          name: "Mac Studio",
          size: "",
          processor: "",
          year: "2023",
          additional: ""
        },
        {
          key: "Mac14,14",
          name: "Mac Studio",
          size: "",
          processor: "",
          year: "2023",
          additional: ""
        },
        {
          key: "Mac13,1",
          name: "Mac Studio",
          size: "",
          processor: "",
          year: "2022",
          additional: ""
        },
        {
          key: "Mac13,2",
          name: "Mac Studio",
          size: "",
          processor: "",
          year: "2022",
          additional: ""
        },
        {
          key: "Mac16,11",
          name: "Mac mini",
          size: "",
          processor: "M4 Pro",
          year: "2024",
          additional: ""
        },
        {
          key: "Mac16,10",
          name: "Mac mini",
          size: "",
          processor: "M4",
          year: "2024",
          additional: ""
        },
        {
          key: "Mac14,3",
          name: "Mac mini",
          size: "",
          processor: "M2",
          year: "2023",
          additional: ""
        },
        {
          key: "Mac14,12",
          name: "Mac mini",
          size: "",
          processor: "M2 Pro",
          year: "2023",
          additional: ""
        },
        {
          key: "Macmini9,1",
          name: "Mac mini",
          size: "",
          processor: "M1",
          year: "2020",
          additional: ""
        },
        {
          key: "Macmini8,1",
          name: "Mac mini",
          size: "",
          processor: "",
          year: "Late 2018",
          additional: ""
        },
        {
          key: "Macmini7,1",
          name: "Mac mini",
          size: "",
          processor: "",
          year: "Late 2014",
          additional: ""
        },
        {
          key: "Macmini6,1",
          name: "Mac mini",
          size: "",
          processor: "",
          year: "Late 2012",
          additional: ""
        },
        {
          key: "Macmini6,2",
          name: "Mac mini",
          size: "",
          processor: "",
          year: "Late 2012",
          additional: ""
        },
        {
          key: "Macmini5,1",
          name: "Mac mini",
          size: "",
          processor: "",
          year: "Mid 2011",
          additional: ""
        },
        {
          key: "Macmini5,2",
          name: "Mac mini",
          size: "",
          processor: "",
          year: "Mid 2011",
          additional: ""
        },
        {
          key: "Macmini4,1",
          name: "Mac mini",
          size: "",
          processor: "",
          year: "Mid 2010",
          additional: ""
        },
        {
          key: "Macmini3,1",
          name: "Mac mini",
          size: "",
          processor: "",
          year: "Early 2009",
          additional: ""
        },
        {
          key: "Mac16,3",
          name: "iMac",
          size: "24-inch",
          processor: "M4",
          year: "2024",
          additional: "Four ports"
        },
        {
          key: "Mac16,2",
          name: "iMac",
          size: "24-inch",
          processor: "M4",
          year: "2024",
          additional: "Two ports"
        },
        {
          key: "Mac15,5",
          name: "iMac",
          size: "24-inch",
          processor: "M3",
          year: "2023",
          additional: "Four ports"
        },
        {
          key: "Mac15,4",
          name: "iMac",
          size: "24-inch",
          processor: "M3",
          year: "2023",
          additional: "Two ports"
        },
        {
          key: "iMac21,1",
          name: "iMac",
          size: "24-inch",
          processor: "M1",
          year: "2021",
          additional: ""
        },
        {
          key: "iMac21,2",
          name: "iMac",
          size: "24-inch",
          processor: "M1",
          year: "2021",
          additional: ""
        },
        {
          key: "iMac20,1",
          name: "iMac",
          size: "27-inch",
          processor: "",
          year: "2020",
          additional: "Retina 5K"
        },
        {
          key: "iMac20,2",
          name: "iMac",
          size: "27-inch",
          processor: "",
          year: "2020",
          additional: "Retina 5K"
        },
        {
          key: "iMac19,1",
          name: "iMac",
          size: "27-inch",
          processor: "",
          year: "2019",
          additional: "Retina 5K"
        },
        {
          key: "iMac19,2",
          name: "iMac",
          size: "21.5-inch",
          processor: "",
          year: "2019",
          additional: "Retina 4K"
        },
        {
          key: "iMacPro1,1",
          name: "iMac Pro",
          size: "",
          processor: "",
          year: "2017",
          additional: ""
        },
        {
          key: "iMac18,3",
          name: "iMac",
          size: "27-inch",
          processor: "",
          year: "2017",
          additional: "Retina 5K"
        },
        {
          key: "iMac18,2",
          name: "iMac",
          size: "21.5-inch",
          processor: "",
          year: "2017",
          additional: "Retina 4K"
        },
        {
          key: "iMac18,1",
          name: "iMac",
          size: "21.5-inch",
          processor: "",
          year: "2017",
          additional: ""
        },
        {
          key: "iMac17,1",
          name: "iMac",
          size: "27-inch",
          processor: "",
          year: "Late 2015",
          additional: "Retina 5K"
        },
        {
          key: "iMac16,2",
          name: "iMac",
          size: "21.5-inch",
          processor: "",
          year: "Late 2015",
          additional: "Retina 4K"
        },
        {
          key: "iMac16,1",
          name: "iMac",
          size: "21.5-inch",
          processor: "",
          year: "Late 2015",
          additional: ""
        },
        {
          key: "iMac15,1",
          name: "iMac",
          size: "27-inch",
          processor: "",
          year: "Late 2014",
          additional: "Retina 5K"
        },
        {
          key: "iMac14,4",
          name: "iMac",
          size: "21.5-inch",
          processor: "",
          year: "Mid 2014",
          additional: ""
        },
        {
          key: "iMac14,2",
          name: "iMac",
          size: "27-inch",
          processor: "",
          year: "Late 2013",
          additional: ""
        },
        {
          key: "iMac14,1",
          name: "iMac",
          size: "21.5-inch",
          processor: "",
          year: "Late 2013",
          additional: ""
        },
        {
          key: "iMac13,2",
          name: "iMac",
          size: "27-inch",
          processor: "",
          year: "Late 2012",
          additional: ""
        },
        {
          key: "iMac13,1",
          name: "iMac",
          size: "21.5-inch",
          processor: "",
          year: "Late 2012",
          additional: ""
        },
        {
          key: "iMac12,2",
          name: "iMac",
          size: "27-inch",
          processor: "",
          year: "Mid 2011",
          additional: ""
        },
        {
          key: "iMac12,1",
          name: "iMac",
          size: "21.5-inch",
          processor: "",
          year: "Mid 2011",
          additional: ""
        },
        {
          key: "iMac11,3",
          name: "iMac",
          size: "27-inch",
          processor: "",
          year: "Mid 2010",
          additional: ""
        },
        {
          key: "iMac11,2",
          name: "iMac",
          size: "21.5-inch",
          processor: "",
          year: "Mid 2010",
          additional: ""
        },
        {
          key: "iMac10,1",
          name: "iMac",
          size: "21.5-inch",
          processor: "",
          year: "Late 2009",
          additional: ""
        },
        {
          key: "iMac9,1",
          name: "iMac",
          size: "20-inch",
          processor: "",
          year: "Early 2009",
          additional: ""
        },
        {
          key: "Mac14,8",
          name: "Mac Pro",
          size: "",
          processor: "",
          year: "2023",
          additional: ""
        },
        {
          key: "Mac14,8",
          name: "Mac Pro",
          size: "",
          processor: "",
          year: "2023",
          additional: "Rack"
        },
        {
          key: "MacPro7,1",
          name: "Mac Pro",
          size: "",
          processor: "",
          year: "2019",
          additional: ""
        },
        {
          key: "MacPro7,1",
          name: "Mac Pro",
          size: "",
          processor: "",
          year: "2019",
          additional: "Rack"
        },
        {
          key: "MacPro6,1",
          name: "Mac Pro",
          size: "",
          processor: "",
          year: "Late 2013",
          additional: ""
        },
        {
          key: "MacPro5,1",
          name: "Mac Pro",
          size: "",
          processor: "",
          year: "Mid 2012",
          additional: ""
        },
        {
          key: "MacPro5,1",
          name: "Mac Pro Server",
          size: "",
          processor: "",
          year: "Mid 2012",
          additional: "Server"
        },
        {
          key: "MacPro5,1",
          name: "Mac Pro",
          size: "",
          processor: "",
          year: "Mid 2010",
          additional: ""
        },
        {
          key: "MacPro5,1",
          name: "Mac Pro Server",
          size: "",
          processor: "",
          year: "Mid 2010",
          additional: "Server"
        },
        {
          key: "MacPro4,1",
          name: "Mac Pro",
          size: "",
          processor: "",
          year: "Early 2009",
          additional: ""
        }
      ];
      const list = appleModelIds.filter((model) => model.key === key);
      if (list.length === 0) {
        return {
          key,
          model: "Apple",
          version: "Unknown"
        };
      }
      const features = [];
      if (list[0].size) {
        features.push(list[0].size);
      }
      if (list[0].processor) {
        features.push(list[0].processor);
      }
      if (list[0].year) {
        features.push(list[0].year);
      }
      if (list[0].additional) {
        features.push(list[0].additional);
      }
      return {
        key,
        model: list[0].name,
        version: list[0].name + " (" + features.join(", ") + ")"
      };
    }
    function checkWebsite(url2, timeout = 5e3) {
      const http2 = url2.startsWith("https:") || url2.indexOf(":443/") > 0 || url2.indexOf(":8443/") > 0 ? require("https") : require("http");
      const t = Date.now();
      return new Promise((resolve) => {
        const request = http2.get(url2, function(res) {
          res.on("data", () => {
          });
          res.on("end", () => {
            resolve({
              url: url2,
              statusCode: res.statusCode,
              message: res.statusMessage,
              time: Date.now() - t
            });
          });
        }).on("error", function(e) {
          resolve({
            url: url2,
            statusCode: 404,
            message: e.message,
            time: Date.now() - t
          });
        }).setTimeout(timeout, () => {
          request.destroy();
          resolve({
            url: url2,
            statusCode: 408,
            message: "Request Timeout",
            time: Date.now() - t
          });
        });
      });
    }
    function cleanString(str) {
      return str.replace(/To Be Filled By O.E.M./g, "");
    }
    function noop() {
    }
    exports2.toInt = toInt;
    exports2.splitByNumber = splitByNumber;
    exports2.execOptsWin = execOptsWin;
    exports2.execOptsLinux = execOptsLinux;
    exports2.getCodepage = getCodepage;
    exports2.execWin = execWin;
    exports2.isFunction = isFunction;
    exports2.unique = unique;
    exports2.sortByKey = sortByKey;
    exports2.cores = cores;
    exports2.getValue = getValue;
    exports2.decodeEscapeSequence = decodeEscapeSequence;
    exports2.parseDateTime = parseDateTime;
    exports2.parseHead = parseHead;
    exports2.findObjectByKey = findObjectByKey;
    exports2.getWmic = getWmic;
    exports2.wmic = wmic;
    exports2.darwinXcodeExists = darwinXcodeExists;
    exports2.getVboxmanage = getVboxmanage;
    exports2.powerShell = powerShell;
    exports2.powerShellStart = powerShellStart;
    exports2.powerShellRelease = powerShellRelease;
    exports2.execSafe = execSafe;
    exports2.nanoSeconds = nanoSeconds;
    exports2.countUniqueLines = countUniqueLines;
    exports2.countLines = countLines;
    exports2.noop = noop;
    exports2.isRaspberry = isRaspberry;
    exports2.isRaspbian = isRaspbian;
    exports2.sanitizeShellString = sanitizeShellString;
    exports2.isPrototypePolluted = isPrototypePolluted;
    exports2.decodePiCpuinfo = decodePiCpuinfo;
    exports2.getRpiGpu = getRpiGpu;
    exports2.promiseAll = promiseAll;
    exports2.promisify = promisify;
    exports2.promisifySave = promisifySave;
    exports2.smartMonToolsInstalled = smartMonToolsInstalled;
    exports2.linuxVersion = linuxVersion;
    exports2.plistParser = plistParser;
    exports2.plistReader = plistReader;
    exports2.stringObj = stringObj;
    exports2.stringReplace = stringReplace;
    exports2.stringToLower = stringToLower;
    exports2.stringToString = stringToString;
    exports2.stringSubstr = stringSubstr;
    exports2.stringSubstring = stringSubstring;
    exports2.stringTrim = stringTrim;
    exports2.stringStartWith = stringStartWith;
    exports2.mathMin = mathMin;
    exports2.WINDIR = WINDIR;
    exports2.getFilesInPath = getFilesInPath;
    exports2.semverCompare = semverCompare;
    exports2.getAppleModel = getAppleModel;
    exports2.checkWebsite = checkWebsite;
    exports2.cleanString = cleanString;
    exports2.getPowershell = getPowershell;
  }
});

// node_modules/systeminformation/lib/osinfo.js
var require_osinfo = __commonJS({
  "node_modules/systeminformation/lib/osinfo.js"(exports2) {
    "use strict";
    var os = require("os");
    var fs2 = require("fs");
    var util = require_util();
    var exec = require("child_process").exec;
    var execSync = require("child_process").execSync;
    var _platform = process.platform;
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _sunos = _platform === "sunos";
    function time() {
      let t = (/* @__PURE__ */ new Date()).toString().split(" ");
      let timezoneName = "";
      try {
        timezoneName = Intl.DateTimeFormat().resolvedOptions().timeZone;
      } catch {
        timezoneName = t.length >= 7 ? t.slice(6).join(" ").replace(/\(/g, "").replace(/\)/g, "") : "";
      }
      const result2 = {
        current: Date.now(),
        uptime: os.uptime(),
        timezone: t.length >= 7 ? t[5] : "",
        timezoneName
      };
      if (_darwin || _linux) {
        try {
          const stdout = execSync("date +%Z && date +%z && ls -l /etc/localtime 2>/dev/null", util.execOptsLinux);
          const lines = stdout.toString().split(os.EOL);
          if (lines.length > 3 && !lines[0]) {
            lines.shift();
          }
          let timezone = lines[0] || "";
          if (timezone.startsWith("+") || timezone.startsWith("-")) {
            timezone = "GMT";
          }
          return {
            current: Date.now(),
            uptime: os.uptime(),
            timezone: lines[1] ? timezone + lines[1] : timezone,
            timezoneName: lines[2] && lines[2].indexOf("/zoneinfo/") > 0 ? lines[2].split("/zoneinfo/")[1] || "" : ""
          };
        } catch (e) {
          util.noop();
        }
      }
      return result2;
    }
    exports2.time = time;
    function getLogoFile(distro) {
      distro = distro || "";
      distro = distro.toLowerCase();
      let result2 = _platform;
      if (_windows) {
        result2 = "windows";
      } else if (distro.indexOf("mac os") !== -1 || distro.indexOf("macos") !== -1) {
        result2 = "apple";
      } else if (distro.indexOf("arch") !== -1) {
        result2 = "arch";
      } else if (distro.indexOf("cachy") !== -1) {
        result2 = "cachy";
      } else if (distro.indexOf("centos") !== -1) {
        result2 = "centos";
      } else if (distro.indexOf("coreos") !== -1) {
        result2 = "coreos";
      } else if (distro.indexOf("debian") !== -1) {
        result2 = "debian";
      } else if (distro.indexOf("deepin") !== -1) {
        result2 = "deepin";
      } else if (distro.indexOf("elementary") !== -1) {
        result2 = "elementary";
      } else if (distro.indexOf("endeavour") !== -1) {
        result2 = "endeavour";
      } else if (distro.indexOf("fedora") !== -1) {
        result2 = "fedora";
      } else if (distro.indexOf("gentoo") !== -1) {
        result2 = "gentoo";
      } else if (distro.indexOf("mageia") !== -1) {
        result2 = "mageia";
      } else if (distro.indexOf("mandriva") !== -1) {
        result2 = "mandriva";
      } else if (distro.indexOf("manjaro") !== -1) {
        result2 = "manjaro";
      } else if (distro.indexOf("mint") !== -1) {
        result2 = "mint";
      } else if (distro.indexOf("mx") !== -1) {
        result2 = "mx";
      } else if (distro.indexOf("openbsd") !== -1) {
        result2 = "openbsd";
      } else if (distro.indexOf("freebsd") !== -1) {
        result2 = "freebsd";
      } else if (distro.indexOf("opensuse") !== -1) {
        result2 = "opensuse";
      } else if (distro.indexOf("pclinuxos") !== -1) {
        result2 = "pclinuxos";
      } else if (distro.indexOf("puppy") !== -1) {
        result2 = "puppy";
      } else if (distro.indexOf("popos") !== -1) {
        result2 = "popos";
      } else if (distro.indexOf("raspbian") !== -1) {
        result2 = "raspbian";
      } else if (distro.indexOf("reactos") !== -1) {
        result2 = "reactos";
      } else if (distro.indexOf("redhat") !== -1) {
        result2 = "redhat";
      } else if (distro.indexOf("slackware") !== -1) {
        result2 = "slackware";
      } else if (distro.indexOf("sugar") !== -1) {
        result2 = "sugar";
      } else if (distro.indexOf("steam") !== -1) {
        result2 = "steam";
      } else if (distro.indexOf("suse") !== -1) {
        result2 = "suse";
      } else if (distro.indexOf("mate") !== -1) {
        result2 = "ubuntu-mate";
      } else if (distro.indexOf("lubuntu") !== -1) {
        result2 = "lubuntu";
      } else if (distro.indexOf("xubuntu") !== -1) {
        result2 = "xubuntu";
      } else if (distro.indexOf("ubuntu") !== -1) {
        result2 = "ubuntu";
      } else if (distro.indexOf("solaris") !== -1) {
        result2 = "solaris";
      } else if (distro.indexOf("tails") !== -1) {
        result2 = "tails";
      } else if (distro.indexOf("feren") !== -1) {
        result2 = "ferenos";
      } else if (distro.indexOf("robolinux") !== -1) {
        result2 = "robolinux";
      } else if (_linux && distro) {
        result2 = distro.toLowerCase().trim().replace(/\s+/g, "-");
      }
      return result2;
    }
    function getFQDN() {
      let fqdn = os.hostname;
      if (_linux || _darwin) {
        try {
          const stdout = execSync("hostname -f 2>/dev/null", util.execOptsLinux);
          fqdn = stdout.toString().split(os.EOL)[0];
        } catch (e) {
          util.noop();
        }
      }
      if (_freebsd || _openbsd || _netbsd) {
        try {
          const stdout = execSync("hostname 2>/dev/null");
          fqdn = stdout.toString().split(os.EOL)[0];
        } catch (e) {
          util.noop();
        }
      }
      if (_windows) {
        try {
          const stdout = execSync("echo %COMPUTERNAME%.%USERDNSDOMAIN%", util.execOptsWin);
          fqdn = stdout.toString().replace(".%USERDNSDOMAIN%", "").split(os.EOL)[0];
        } catch (e) {
          util.noop();
        }
      }
      return fqdn;
    }
    function osInfo(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = {
            platform: _platform === "win32" ? "Windows" : _platform,
            distro: "unknown",
            release: "unknown",
            codename: "",
            kernel: os.release(),
            arch: os.arch(),
            hostname: os.hostname(),
            fqdn: getFQDN(),
            codepage: "",
            logofile: "",
            serial: "",
            build: "",
            servicepack: "",
            uefi: false
          };
          if (_linux) {
            exec("cat /etc/*-release; cat /usr/lib/os-release; cat /etc/openwrt_release", function(error, stdout) {
              let release = {};
              let lines = stdout.toString().split("\n");
              lines.forEach(function(line) {
                if (line.indexOf("=") !== -1) {
                  release[line.split("=")[0].trim().toUpperCase()] = line.split("=")[1].trim();
                }
              });
              result2.distro = (release.DISTRIB_ID || release.NAME || "unknown").replace(/"/g, "");
              result2.logofile = getLogoFile(result2.distro);
              let releaseVersion = (release.VERSION || "").replace(/"/g, "");
              let codename = (release.DISTRIB_CODENAME || release.VERSION_CODENAME || "").replace(/"/g, "");
              const prettyName = (release.PRETTY_NAME || "").replace(/"/g, "");
              if (prettyName.indexOf(result2.distro + " ") === 0) {
                releaseVersion = prettyName.replace(result2.distro + " ", "").trim();
              }
              if (releaseVersion.indexOf("(") >= 0) {
                codename = releaseVersion.split("(")[1].replace(/[()]/g, "").trim();
                releaseVersion = releaseVersion.split("(")[0].trim();
              }
              result2.release = (releaseVersion || release.DISTRIB_RELEASE || release.VERSION_ID || "unknown").replace(/"/g, "");
              result2.codename = codename;
              result2.codepage = util.getCodepage();
              result2.build = (release.BUILD_ID || "").replace(/"/g, "").trim();
              isUefiLinux().then((uefi) => {
                result2.uefi = uefi;
                uuid().then((data) => {
                  result2.serial = data.os;
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                });
              });
            });
          }
          if (_freebsd || _openbsd || _netbsd) {
            exec("sysctl kern.ostype kern.osrelease kern.osrevision kern.hostuuid machdep.bootmethod kern.geom.confxml", function(error, stdout) {
              let lines = stdout.toString().split("\n");
              const distro = util.getValue(lines, "kern.ostype");
              const logofile = getLogoFile(distro);
              const release = util.getValue(lines, "kern.osrelease").split("-")[0];
              const serial = util.getValue(lines, "kern.uuid");
              const bootmethod = util.getValue(lines, "machdep.bootmethod");
              const uefiConf = stdout.toString().indexOf("<type>efi</type>") >= 0;
              const uefi = bootmethod ? bootmethod.toLowerCase().indexOf("uefi") >= 0 : uefiConf ? uefiConf : null;
              result2.distro = distro || result2.distro;
              result2.logofile = logofile || result2.logofile;
              result2.release = release || result2.release;
              result2.serial = serial || result2.serial;
              result2.codename = "";
              result2.codepage = util.getCodepage();
              result2.uefi = uefi || null;
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_darwin) {
            exec("sw_vers; sysctl kern.ostype kern.osrelease kern.osrevision kern.uuid", function(error, stdout) {
              let lines = stdout.toString().split("\n");
              result2.serial = util.getValue(lines, "kern.uuid");
              result2.distro = util.getValue(lines, "ProductName");
              result2.release = (util.getValue(lines, "ProductVersion", ":", true, true) + " " + util.getValue(lines, "ProductVersionExtra", ":", true, true)).trim();
              result2.build = util.getValue(lines, "BuildVersion");
              result2.logofile = getLogoFile(result2.distro);
              result2.codename = "macOS";
              result2.codename = result2.release.indexOf("10.4") > -1 ? "OS X Tiger" : result2.codename;
              result2.codename = result2.release.indexOf("10.5") > -1 ? "OS X Leopard" : result2.codename;
              result2.codename = result2.release.indexOf("10.6") > -1 ? "OS X Snow Leopard" : result2.codename;
              result2.codename = result2.release.indexOf("10.7") > -1 ? "OS X Lion" : result2.codename;
              result2.codename = result2.release.indexOf("10.8") > -1 ? "OS X Mountain Lion" : result2.codename;
              result2.codename = result2.release.indexOf("10.9") > -1 ? "OS X Mavericks" : result2.codename;
              result2.codename = result2.release.indexOf("10.10") > -1 ? "OS X Yosemite" : result2.codename;
              result2.codename = result2.release.indexOf("10.11") > -1 ? "OS X El Capitan" : result2.codename;
              result2.codename = result2.release.indexOf("10.12") > -1 ? "Sierra" : result2.codename;
              result2.codename = result2.release.indexOf("10.13") > -1 ? "High Sierra" : result2.codename;
              result2.codename = result2.release.indexOf("10.14") > -1 ? "Mojave" : result2.codename;
              result2.codename = result2.release.indexOf("10.15") > -1 ? "Catalina" : result2.codename;
              result2.codename = result2.release.startsWith("11.") ? "Big Sur" : result2.codename;
              result2.codename = result2.release.startsWith("12.") ? "Monterey" : result2.codename;
              result2.codename = result2.release.startsWith("13.") ? "Ventura" : result2.codename;
              result2.codename = result2.release.startsWith("14.") ? "Sonoma" : result2.codename;
              result2.codename = result2.release.startsWith("15.") ? "Sequoia" : result2.codename;
              result2.codename = result2.release.startsWith("16.") ? "Tahoe" : result2.codename;
              result2.codename = result2.release.startsWith("26.") ? "Tahoe" : result2.codename;
              result2.uefi = true;
              result2.codepage = util.getCodepage();
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_sunos) {
            result2.release = result2.kernel;
            exec("uname -o", function(error, stdout) {
              let lines = stdout.toString().split("\n");
              result2.distro = lines[0];
              result2.logofile = getLogoFile(result2.distro);
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_windows) {
            result2.logofile = getLogoFile();
            result2.release = result2.kernel;
            try {
              const workload = [];
              workload.push(util.powerShell("Get-CimInstance Win32_OperatingSystem | select Caption,SerialNumber,BuildNumber,ServicePackMajorVersion,ServicePackMinorVersion | fl"));
              workload.push(util.powerShell("(Get-CimInstance Win32_ComputerSystem).HypervisorPresent"));
              workload.push(util.powerShell("Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SystemInformation]::TerminalServerSession"));
              util.promiseAll(
                workload
              ).then((data) => {
                let lines = data.results[0] ? data.results[0].toString().split("\r\n") : [""];
                result2.distro = util.getValue(lines, "Caption", ":").trim();
                result2.serial = util.getValue(lines, "SerialNumber", ":").trim();
                result2.build = util.getValue(lines, "BuildNumber", ":").trim();
                result2.servicepack = util.getValue(lines, "ServicePackMajorVersion", ":").trim() + "." + util.getValue(lines, "ServicePackMinorVersion", ":").trim();
                result2.codepage = util.getCodepage();
                const hyperv = data.results[1] ? data.results[1].toString().toLowerCase() : "";
                result2.hypervisor = hyperv.indexOf("true") !== -1;
                const term = data.results[2] ? data.results[2].toString() : "";
                result2.remoteSession = term.toString().toLowerCase().indexOf("true") >= 0;
                isUefiWindows().then((uefi) => {
                  result2.uefi = uefi;
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                });
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    }
    exports2.osInfo = osInfo;
    function isUefiLinux() {
      return new Promise((resolve) => {
        process.nextTick(() => {
          fs2.stat("/sys/firmware/efi", function(err) {
            if (!err) {
              return resolve(true);
            } else {
              exec('dmesg | grep -E "EFI v"', function(error, stdout) {
                if (!error) {
                  const lines = stdout.toString().split("\n");
                  return resolve(lines.length > 0);
                }
                return resolve(false);
              });
            }
          });
        });
      });
    }
    function isUefiWindows() {
      return new Promise((resolve) => {
        process.nextTick(() => {
          try {
            exec('findstr /C:"Detected boot environment" "%windir%\\Panther\\setupact.log"', util.execOptsWin, function(error, stdout) {
              if (!error) {
                const line = stdout.toString().split("\n\r")[0];
                return resolve(line.toLowerCase().indexOf("efi") >= 0);
              } else {
                exec("echo %firmware_type%", util.execOptsWin, function(error2, stdout2) {
                  if (!error2) {
                    const line = stdout2.toString() || "";
                    return resolve(line.toLowerCase().indexOf("efi") >= 0);
                  } else {
                    return resolve(false);
                  }
                });
              }
            });
          } catch (e) {
            return resolve(false);
          }
        });
      });
    }
    function versions(apps, callback) {
      let versionObject = {
        kernel: os.release(),
        apache: "",
        bash: "",
        bun: "",
        deno: "",
        docker: "",
        dotnet: "",
        fish: "",
        gcc: "",
        git: "",
        grunt: "",
        gulp: "",
        homebrew: "",
        java: "",
        mongodb: "",
        mysql: "",
        nginx: "",
        node: "",
        //process.versions.node,
        npm: "",
        openssl: "",
        perl: "",
        php: "",
        pip3: "",
        pip: "",
        pm2: "",
        postfix: "",
        postgresql: "",
        powershell: "",
        python3: "",
        python: "",
        redis: "",
        systemOpenssl: "",
        systemOpensslLib: "",
        tsc: "",
        v8: process.versions.v8,
        virtualbox: "",
        yarn: "",
        zsh: ""
      };
      function checkVersionParam(apps2) {
        if (apps2 === "*") {
          return {
            versions: versionObject,
            counter: 34
          };
        }
        if (!Array.isArray(apps2)) {
          apps2 = apps2.trim().toLowerCase().replace(/,+/g, "|").replace(/ /g, "|");
          apps2 = apps2.split("|");
          const result2 = {
            versions: {},
            counter: 0
          };
          apps2.forEach((el) => {
            if (el) {
              for (let key in versionObject) {
                if ({}.hasOwnProperty.call(versionObject, key)) {
                  if (key.toLowerCase() === el.toLowerCase() && !{}.hasOwnProperty.call(result2.versions, key)) {
                    result2.versions[key] = versionObject[key];
                    if (key === "openssl") {
                      result2.versions.systemOpenssl = "";
                      result2.versions.systemOpensslLib = "";
                    }
                    if (!result2.versions[key]) {
                      result2.counter++;
                    }
                  }
                }
              }
            }
          });
          return result2;
        }
      }
      return new Promise((resolve) => {
        process.nextTick(() => {
          if (util.isFunction(apps) && !callback) {
            callback = apps;
            apps = "*";
          } else {
            apps = apps || "*";
            if (typeof apps !== "string") {
              if (callback) {
                callback({});
              }
              return resolve({});
            }
          }
          const appsObj = checkVersionParam(apps);
          let totalFunctions = appsObj.counter;
          let functionProcessed = /* @__PURE__ */ function() {
            return function() {
              if (--totalFunctions === 0) {
                if (callback) {
                  callback(appsObj.versions);
                }
                resolve(appsObj.versions);
              }
            };
          }();
          let cmd = "";
          try {
            if ({}.hasOwnProperty.call(appsObj.versions, "openssl")) {
              appsObj.versions.openssl = process.versions.openssl;
              exec("openssl version", function(error, stdout) {
                if (!error) {
                  let openssl_string = stdout.toString().split("\n")[0].trim();
                  let openssl = openssl_string.split(" ");
                  appsObj.versions.systemOpenssl = openssl.length > 0 ? openssl[1] : openssl[0];
                  appsObj.versions.systemOpensslLib = openssl.length > 0 ? openssl[0] : "openssl";
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "npm")) {
              exec("npm -v", function(error, stdout) {
                if (!error) {
                  appsObj.versions.npm = stdout.toString().split("\n")[0];
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "pm2")) {
              cmd = "pm2";
              if (_windows) {
                cmd += ".cmd";
              }
              exec(`${cmd} -v`, function(error, stdout) {
                if (!error) {
                  let pm2 = stdout.toString().split("\n")[0].trim();
                  if (!pm2.startsWith("[PM2]")) {
                    appsObj.versions.pm2 = pm2;
                  }
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "yarn")) {
              exec("yarn --version", function(error, stdout) {
                if (!error) {
                  appsObj.versions.yarn = stdout.toString().split("\n")[0];
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "gulp")) {
              cmd = "gulp";
              if (_windows) {
                cmd += ".cmd";
              }
              exec(`${cmd} --version`, function(error, stdout) {
                if (!error) {
                  const gulp = stdout.toString().split("\n")[0] || "";
                  appsObj.versions.gulp = (gulp.toLowerCase().split("version")[1] || "").trim();
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "homebrew")) {
              cmd = "brew";
              exec(`${cmd} --version`, function(error, stdout) {
                if (!error) {
                  const brew = stdout.toString().split("\n")[0] || "";
                  appsObj.versions.homebrew = (brew.toLowerCase().split(" ")[1] || "").trim();
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "tsc")) {
              cmd = "tsc";
              if (_windows) {
                cmd += ".cmd";
              }
              exec(`${cmd} --version`, function(error, stdout) {
                if (!error) {
                  const tsc = stdout.toString().split("\n")[0] || "";
                  appsObj.versions.tsc = (tsc.toLowerCase().split("version")[1] || "").trim();
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "grunt")) {
              cmd = "grunt";
              if (_windows) {
                cmd += ".cmd";
              }
              exec(`${cmd} --version`, function(error, stdout) {
                if (!error) {
                  const grunt = stdout.toString().split("\n")[0] || "";
                  appsObj.versions.grunt = (grunt.toLowerCase().split("cli v")[1] || "").trim();
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "git")) {
              if (_darwin) {
                const gitHomebrewExists = fs2.existsSync("/usr/local/Cellar/git") || fs2.existsSync("/opt/homebrew/bin/git");
                if (util.darwinXcodeExists() || gitHomebrewExists) {
                  exec("git --version", function(error, stdout) {
                    if (!error) {
                      let git = stdout.toString().split("\n")[0] || "";
                      git = (git.toLowerCase().split("version")[1] || "").trim();
                      appsObj.versions.git = (git.split(" ")[0] || "").trim();
                    }
                    functionProcessed();
                  });
                } else {
                  functionProcessed();
                }
              } else {
                exec("git --version", function(error, stdout) {
                  if (!error) {
                    let git = stdout.toString().split("\n")[0] || "";
                    git = (git.toLowerCase().split("version")[1] || "").trim();
                    appsObj.versions.git = (git.split(" ")[0] || "").trim();
                  }
                  functionProcessed();
                });
              }
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "apache")) {
              exec("apachectl -v 2>&1", function(error, stdout) {
                if (!error) {
                  const apache = (stdout.toString().split("\n")[0] || "").split(":");
                  appsObj.versions.apache = apache.length > 1 ? apache[1].replace("Apache", "").replace("/", "").split("(")[0].trim() : "";
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "nginx")) {
              exec("nginx -v 2>&1", function(error, stdout) {
                if (!error) {
                  const nginx = stdout.toString().split("\n")[0] || "";
                  appsObj.versions.nginx = (nginx.toLowerCase().split("/")[1] || "").trim();
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "mysql")) {
              exec("mysql -V", function(error, stdout) {
                if (!error) {
                  let mysql = stdout.toString().split("\n")[0] || "";
                  mysql = mysql.toLowerCase();
                  if (mysql.indexOf(",") > -1) {
                    mysql = (mysql.split(",")[0] || "").trim();
                    const parts = mysql.split(" ");
                    appsObj.versions.mysql = (parts[parts.length - 1] || "").trim();
                  } else {
                    if (mysql.indexOf(" ver ") > -1) {
                      mysql = mysql.split(" ver ")[1];
                      appsObj.versions.mysql = mysql.split(" ")[0];
                    }
                  }
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "php")) {
              exec("php -v", function(error, stdout) {
                if (!error) {
                  const php = stdout.toString().split("\n")[0] || "";
                  let parts = php.split("(");
                  if (parts[0].indexOf("-")) {
                    parts = parts[0].split("-");
                  }
                  appsObj.versions.php = parts[0].replace(/[^0-9.]/g, "");
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "redis")) {
              exec("redis-server --version", function(error, stdout) {
                if (!error) {
                  const redis = stdout.toString().split("\n")[0] || "";
                  const parts = redis.split(" ");
                  appsObj.versions.redis = util.getValue(parts, "v", "=", true);
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "docker")) {
              exec("docker --version", function(error, stdout) {
                if (!error) {
                  const docker = stdout.toString().split("\n")[0] || "";
                  const parts = docker.split(" ");
                  appsObj.versions.docker = parts.length > 2 && parts[2].endsWith(",") ? parts[2].slice(0, -1) : "";
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "postfix")) {
              exec("postconf -d | grep mail_version", function(error, stdout) {
                if (!error) {
                  const postfix = stdout.toString().split("\n") || [];
                  appsObj.versions.postfix = util.getValue(postfix, "mail_version", "=", true);
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "mongodb")) {
              exec("mongod --version", function(error, stdout) {
                if (!error) {
                  const mongodb = stdout.toString().split("\n")[0] || "";
                  appsObj.versions.mongodb = (mongodb.toLowerCase().split(",")[0] || "").replace(/[^0-9.]/g, "");
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "postgresql")) {
              if (_linux) {
                exec("locate bin/postgres", function(error, stdout) {
                  if (!error) {
                    const postgresqlBin = stdout.toString().split("\n").sort();
                    if (postgresqlBin.length) {
                      exec(postgresqlBin[postgresqlBin.length - 1] + " -V", function(error2, stdout2) {
                        if (!error2) {
                          const postgresql = stdout2.toString().split("\n")[0].split(" ") || [];
                          appsObj.versions.postgresql = postgresql.length ? postgresql[postgresql.length - 1] : "";
                        }
                        functionProcessed();
                      });
                    } else {
                      functionProcessed();
                    }
                  } else {
                    exec("psql -V", function(error2, stdout2) {
                      if (!error2) {
                        const postgresql = stdout2.toString().split("\n")[0].split(" ") || [];
                        appsObj.versions.postgresql = postgresql.length ? postgresql[postgresql.length - 1] : "";
                        appsObj.versions.postgresql = appsObj.versions.postgresql.split("-")[0];
                      }
                      functionProcessed();
                    });
                  }
                });
              } else {
                if (_windows) {
                  util.powerShell("Get-CimInstance Win32_Service | select caption | fl").then((stdout) => {
                    let serviceSections = stdout.split(/\n\s*\n/);
                    serviceSections.forEach((item) => {
                      if (item.trim() !== "") {
                        let lines = item.trim().split("\r\n");
                        let srvCaption = util.getValue(lines, "caption", ":", true).toLowerCase();
                        if (srvCaption.indexOf("postgresql") > -1) {
                          const parts = srvCaption.split(" server ");
                          if (parts.length > 1) {
                            appsObj.versions.postgresql = parts[1];
                          }
                        }
                      }
                    });
                    functionProcessed();
                  });
                } else {
                  exec("postgres -V", function(error, stdout) {
                    if (!error) {
                      const postgresql = stdout.toString().split("\n")[0].split(" ") || [];
                      appsObj.versions.postgresql = postgresql.length ? postgresql[postgresql.length - 1] : "";
                    } else {
                      exec("pg_config --version", function(error2, stdout2) {
                        if (!error2) {
                          const postgresql = stdout2.toString().split("\n")[0].split(" ") || [];
                          appsObj.versions.postgresql = postgresql.length ? postgresql[postgresql.length - 1] : "";
                        }
                      });
                    }
                    functionProcessed();
                  });
                }
              }
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "perl")) {
              exec("perl -v", function(error, stdout) {
                if (!error) {
                  const perl = stdout.toString().split("\n") || "";
                  while (perl.length > 0 && perl[0].trim() === "") {
                    perl.shift();
                  }
                  if (perl.length > 0) {
                    appsObj.versions.perl = perl[0].split("(").pop().split(")")[0].replace("v", "");
                  }
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "python")) {
              if (_darwin) {
                try {
                  const stdout = execSync("sw_vers");
                  const lines = stdout.toString().split("\n");
                  const osVersion = util.getValue(lines, "ProductVersion", ":");
                  const gitHomebrewExists1 = fs2.existsSync("/usr/local/Cellar/python");
                  const gitHomebrewExists2 = fs2.existsSync("/opt/homebrew/bin/python");
                  if (util.darwinXcodeExists() && util.semverCompare("12.0.1", osVersion) < 0 || gitHomebrewExists1 || gitHomebrewExists2) {
                    const cmd2 = gitHomebrewExists1 ? "/usr/local/Cellar/python -V 2>&1" : gitHomebrewExists2 ? "/opt/homebrew/bin/python -V 2>&1" : "python -V 2>&1";
                    exec(cmd2, function(error, stdout2) {
                      if (!error) {
                        const python = stdout2.toString().split("\n")[0] || "";
                        appsObj.versions.python = python.toLowerCase().replace("python", "").trim();
                      }
                      functionProcessed();
                    });
                  } else {
                    functionProcessed();
                  }
                } catch (e) {
                  functionProcessed();
                }
              } else {
                exec("python -V 2>&1", function(error, stdout) {
                  if (!error) {
                    const python = stdout.toString().split("\n")[0] || "";
                    appsObj.versions.python = python.toLowerCase().replace("python", "").trim();
                  }
                  functionProcessed();
                });
              }
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "python3")) {
              if (_darwin) {
                const gitHomebrewExists = fs2.existsSync("/usr/local/Cellar/python3") || fs2.existsSync("/opt/homebrew/bin/python3");
                if (util.darwinXcodeExists() || gitHomebrewExists) {
                  exec("python3 -V 2>&1", function(error, stdout) {
                    if (!error) {
                      const python = stdout.toString().split("\n")[0] || "";
                      appsObj.versions.python3 = python.toLowerCase().replace("python", "").trim();
                    }
                    functionProcessed();
                  });
                } else {
                  functionProcessed();
                }
              } else {
                exec("python3 -V 2>&1", function(error, stdout) {
                  if (!error) {
                    const python = stdout.toString().split("\n")[0] || "";
                    appsObj.versions.python3 = python.toLowerCase().replace("python", "").trim();
                  }
                  functionProcessed();
                });
              }
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "pip")) {
              if (_darwin) {
                const gitHomebrewExists = fs2.existsSync("/usr/local/Cellar/pip") || fs2.existsSync("/opt/homebrew/bin/pip");
                if (util.darwinXcodeExists() || gitHomebrewExists) {
                  exec("pip -V 2>&1", function(error, stdout) {
                    if (!error) {
                      const pip = stdout.toString().split("\n")[0] || "";
                      const parts = pip.split(" ");
                      appsObj.versions.pip = parts.length >= 2 ? parts[1] : "";
                    }
                    functionProcessed();
                  });
                } else {
                  functionProcessed();
                }
              } else {
                exec("pip -V 2>&1", function(error, stdout) {
                  if (!error) {
                    const pip = stdout.toString().split("\n")[0] || "";
                    const parts = pip.split(" ");
                    appsObj.versions.pip = parts.length >= 2 ? parts[1] : "";
                  }
                  functionProcessed();
                });
              }
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "pip3")) {
              if (_darwin) {
                const gitHomebrewExists = fs2.existsSync("/usr/local/Cellar/pip3") || fs2.existsSync("/opt/homebrew/bin/pip3");
                if (util.darwinXcodeExists() || gitHomebrewExists) {
                  exec("pip3 -V 2>&1", function(error, stdout) {
                    if (!error) {
                      const pip = stdout.toString().split("\n")[0] || "";
                      const parts = pip.split(" ");
                      appsObj.versions.pip3 = parts.length >= 2 ? parts[1] : "";
                    }
                    functionProcessed();
                  });
                } else {
                  functionProcessed();
                }
              } else {
                exec("pip3 -V 2>&1", function(error, stdout) {
                  if (!error) {
                    const pip = stdout.toString().split("\n")[0] || "";
                    const parts = pip.split(" ");
                    appsObj.versions.pip3 = parts.length >= 2 ? parts[1] : "";
                  }
                  functionProcessed();
                });
              }
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "java")) {
              if (_darwin) {
                exec("/usr/libexec/java_home -V 2>&1", function(error, stdout) {
                  if (!error && stdout.toString().toLowerCase().indexOf("no java runtime") === -1) {
                    exec("java -version 2>&1", function(error2, stdout2) {
                      if (!error2) {
                        const java = stdout2.toString().split("\n")[0] || "";
                        const parts = java.split('"');
                        appsObj.versions.java = parts.length === 3 ? parts[1].trim() : "";
                      }
                      functionProcessed();
                    });
                  } else {
                    functionProcessed();
                  }
                });
              } else {
                exec("java -version 2>&1", function(error, stdout) {
                  if (!error) {
                    const java = stdout.toString().split("\n")[0] || "";
                    const parts = java.split('"');
                    appsObj.versions.java = parts.length === 3 ? parts[1].trim() : "";
                  }
                  functionProcessed();
                });
              }
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "gcc")) {
              if (_darwin && util.darwinXcodeExists() || !_darwin) {
                exec("gcc -dumpversion", function(error, stdout) {
                  if (!error) {
                    appsObj.versions.gcc = stdout.toString().split("\n")[0].trim() || "";
                  }
                  if (appsObj.versions.gcc.indexOf(".") > -1) {
                    functionProcessed();
                  } else {
                    exec("gcc --version", function(error2, stdout2) {
                      if (!error2) {
                        const gcc = stdout2.toString().split("\n")[0].trim();
                        if (gcc.indexOf("gcc") > -1 && gcc.indexOf(")") > -1) {
                          const parts = gcc.split(")");
                          appsObj.versions.gcc = parts[1].trim() || appsObj.versions.gcc;
                        }
                      }
                      functionProcessed();
                    });
                  }
                });
              } else {
                functionProcessed();
              }
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "virtualbox")) {
              exec(util.getVboxmanage() + " -v 2>&1", function(error, stdout) {
                if (!error) {
                  const vbox = stdout.toString().split("\n")[0] || "";
                  const parts = vbox.split("r");
                  appsObj.versions.virtualbox = parts[0];
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "bash")) {
              exec("bash --version", function(error, stdout) {
                if (!error) {
                  const line = stdout.toString().split("\n")[0];
                  const parts = line.split(" version ");
                  if (parts.length > 1) {
                    appsObj.versions.bash = parts[1].split(" ")[0].split("(")[0];
                  }
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "zsh")) {
              exec("zsh --version", function(error, stdout) {
                if (!error) {
                  const line = stdout.toString().split("\n")[0];
                  const parts = line.split("zsh ");
                  if (parts.length > 1) {
                    appsObj.versions.zsh = parts[1].split(" ")[0];
                  }
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "fish")) {
              exec("fish --version", function(error, stdout) {
                if (!error) {
                  const line = stdout.toString().split("\n")[0];
                  const parts = line.split(" version ");
                  if (parts.length > 1) {
                    appsObj.versions.fish = parts[1].split(" ")[0];
                  }
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "bun")) {
              exec("bun -v", function(error, stdout) {
                if (!error) {
                  const line = stdout.toString().split("\n")[0].trim();
                  appsObj.versions.bun = line;
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "deno")) {
              exec("deno -v", function(error, stdout) {
                if (!error) {
                  const line = stdout.toString().split("\n")[0].trim();
                  const parts = line.split(" ");
                  if (parts.length > 1) {
                    appsObj.versions.deno = parts[1];
                  }
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "node")) {
              exec("node -v", function(error, stdout) {
                if (!error) {
                  let line = stdout.toString().split("\n")[0].trim();
                  if (line.startsWith("v")) {
                    line = line.slice(1);
                  }
                  appsObj.versions.node = line;
                }
                functionProcessed();
              });
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "powershell")) {
              if (_windows) {
                util.powerShell("$PSVersionTable").then((stdout) => {
                  const lines = stdout.toString().toLowerCase().split("\n").map((line) => line.replace(/ +/g, " ").replace(/ +/g, ":"));
                  appsObj.versions.powershell = util.getValue(lines, "psversion");
                  functionProcessed();
                });
              } else {
                functionProcessed();
              }
            }
            if ({}.hasOwnProperty.call(appsObj.versions, "dotnet")) {
              if (_windows) {
                util.powerShell('gci "HKLM:\\SOFTWARE\\Microsoft\\NET Framework Setup\\NDP" -recurse | gp -name Version,Release -EA 0 | where { $_.PSChildName -match "^(?!S)\\p{L}"} | select PSChildName, Version, Release').then((stdout) => {
                  const lines = stdout.toString().split("\r\n");
                  let dotnet = "";
                  lines.forEach((line) => {
                    line = line.replace(/ +/g, " ");
                    const parts = line.split(" ");
                    dotnet = dotnet || (parts[0].toLowerCase().startsWith("client") && parts.length > 2 ? parts[1].trim() : parts[0].toLowerCase().startsWith("full") && parts.length > 2 ? parts[1].trim() : "");
                  });
                  appsObj.versions.dotnet = dotnet.trim();
                  functionProcessed();
                });
              } else {
                functionProcessed();
              }
            }
          } catch (e) {
            if (callback) {
              callback(appsObj.versions);
            }
            resolve(appsObj.versions);
          }
        });
      });
    }
    exports2.versions = versions;
    function shell(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          if (_windows) {
            try {
              const result2 = "CMD";
              util.powerShell(`Get-CimInstance -className win32_process | where-object {$_.ProcessId -eq ${process.ppid} } | select Name`).then((stdout) => {
                let result3 = "CMD";
                if (stdout) {
                  if (stdout.toString().toLowerCase().indexOf("powershell") >= 0) {
                    result3 = "PowerShell";
                  }
                }
                if (callback) {
                  callback(result3);
                }
                resolve(result3);
              });
            } catch {
              if (callback) {
                callback(result);
              }
              resolve(result);
            }
          } else {
            let result2 = "";
            exec("echo $SHELL", function(error, stdout) {
              if (!error) {
                result2 = stdout.toString().split("\n")[0];
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
        });
      });
    }
    exports2.shell = shell;
    function getUniqueMacAdresses() {
      let macs = [];
      try {
        const ifaces = os.networkInterfaces();
        for (let dev in ifaces) {
          if ({}.hasOwnProperty.call(ifaces, dev)) {
            ifaces[dev].forEach(function(details) {
              if (details && details.mac && details.mac !== "00:00:00:00:00:00") {
                const mac = details.mac.toLowerCase();
                if (macs.indexOf(mac) === -1) {
                  macs.push(mac);
                }
              }
            });
          }
        }
        macs = macs.sort(function(a, b) {
          if (a < b) {
            return -1;
          }
          if (a > b) {
            return 1;
          }
          return 0;
        });
      } catch (e) {
        macs.push("00:00:00:00:00:00");
      }
      return macs;
    }
    function uuid(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = {
            os: "",
            hardware: "",
            macs: getUniqueMacAdresses()
          };
          let parts;
          if (_darwin) {
            exec("system_profiler SPHardwareDataType -json", function(error, stdout) {
              if (!error) {
                try {
                  const jsonObj = JSON.parse(stdout.toString());
                  if (jsonObj.SPHardwareDataType && jsonObj.SPHardwareDataType.length > 0) {
                    const spHardware = jsonObj.SPHardwareDataType[0];
                    result2.os = spHardware.platform_UUID.toLowerCase();
                    result2.hardware = spHardware.serial_number;
                  }
                } catch (e) {
                  util.noop();
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_linux) {
            const cmd = `echo -n "os: "; cat /var/lib/dbus/machine-id 2> /dev/null ||
cat /etc/machine-id 2> /dev/null; echo;
echo -n "hardware: "; cat /sys/class/dmi/id/product_uuid 2> /dev/null; echo;`;
            exec(cmd, function(error, stdout) {
              const lines = stdout.toString().split("\n");
              result2.os = util.getValue(lines, "os").toLowerCase();
              result2.hardware = util.getValue(lines, "hardware").toLowerCase();
              if (!result2.hardware) {
                const lines2 = fs2.readFileSync("/proc/cpuinfo", { encoding: "utf8" }).toString().split("\n");
                const serial = util.getValue(lines2, "serial");
                result2.hardware = serial || "";
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_freebsd || _openbsd || _netbsd) {
            exec("sysctl -i kern.hostid kern.hostuuid", function(error, stdout) {
              const lines = stdout.toString().split("\n");
              result2.hardware = util.getValue(lines, "kern.hostid", ":").toLowerCase();
              result2.os = util.getValue(lines, "kern.hostuuid", ":").toLowerCase();
              if (result2.os.indexOf("unknown") >= 0) {
                result2.os = "";
              }
              if (result2.hardware.indexOf("unknown") >= 0) {
                result2.hardware = "";
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_windows) {
            let sysdir = "%windir%\\System32";
            if (process.arch === "ia32" && Object.prototype.hasOwnProperty.call(process.env, "PROCESSOR_ARCHITEW6432")) {
              sysdir = "%windir%\\sysnative\\cmd.exe /c %windir%\\System32";
            }
            util.powerShell("Get-CimInstance Win32_ComputerSystemProduct | select UUID | fl").then((stdout) => {
              let lines = stdout.split("\r\n");
              result2.hardware = util.getValue(lines, "uuid", ":").toLowerCase();
              exec(`${sysdir}\\reg query "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Cryptography" /v MachineGuid`, util.execOptsWin, function(error, stdout2) {
                parts = stdout2.toString().split("\n\r")[0].split("REG_SZ");
                result2.os = parts.length > 1 ? parts[1].replace(/\r+|\n+|\s+/ig, "").toLowerCase() : "";
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            });
          }
        });
      });
    }
    exports2.uuid = uuid;
  }
});

// node_modules/systeminformation/lib/system.js
var require_system = __commonJS({
  "node_modules/systeminformation/lib/system.js"(exports2) {
    "use strict";
    var fs2 = require("fs");
    var os = require("os");
    var util = require_util();
    var { uuid } = require_osinfo();
    var exec = require("child_process").exec;
    var execSync = require("child_process").execSync;
    var execPromise = util.promisify(require("child_process").exec);
    var _platform = process.platform;
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _sunos = _platform === "sunos";
    function system(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = {
            manufacturer: "",
            model: "Computer",
            version: "",
            serial: "-",
            uuid: "-",
            sku: "-",
            virtual: false
          };
          if (_linux || _freebsd || _openbsd || _netbsd) {
            exec("export LC_ALL=C; dmidecode -t system 2>/dev/null; unset LC_ALL", function(error, stdout) {
              let lines = stdout.toString().split("\n");
              result2.manufacturer = cleanDefaults(util.getValue(lines, "manufacturer"));
              result2.model = cleanDefaults(util.getValue(lines, "product name"));
              result2.version = cleanDefaults(util.getValue(lines, "version"));
              result2.serial = cleanDefaults(util.getValue(lines, "serial number"));
              result2.uuid = cleanDefaults(util.getValue(lines, "uuid")).toLowerCase();
              result2.sku = cleanDefaults(util.getValue(lines, "sku number"));
              const cmd = `echo -n "product_name: "; cat /sys/devices/virtual/dmi/id/product_name 2>/dev/null; echo;
            echo -n "product_serial: "; cat /sys/devices/virtual/dmi/id/product_serial 2>/dev/null; echo;
            echo -n "product_uuid: "; cat /sys/devices/virtual/dmi/id/product_uuid 2>/dev/null; echo;
            echo -n "product_version: "; cat /sys/devices/virtual/dmi/id/product_version 2>/dev/null; echo;
            echo -n "sys_vendor: "; cat /sys/devices/virtual/dmi/id/sys_vendor 2>/dev/null; echo;`;
              try {
                lines = execSync(cmd, util.execOptsLinux).toString().split("\n");
                result2.manufacturer = cleanDefaults(result2.manufacturer === "" ? util.getValue(lines, "sys_vendor") : result2.manufacturer);
                result2.model = cleanDefaults(result2.model === "" ? util.getValue(lines, "product_name") : result2.model);
                result2.version = cleanDefaults(result2.version === "" ? util.getValue(lines, "product_version") : result2.version);
                result2.serial = cleanDefaults(result2.serial === "" ? util.getValue(lines, "product_serial") : result2.serial);
                result2.uuid = cleanDefaults(result2.uuid === "" ? util.getValue(lines, "product_uuid").toLowerCase() : result2.uuid);
              } catch (e) {
                util.noop();
              }
              if (!result2.serial) {
                result2.serial = "-";
              }
              if (!result2.manufacturer) {
                result2.manufacturer = "";
              }
              if (!result2.model) {
                result2.model = "Computer";
              }
              if (!result2.version) {
                result2.version = "";
              }
              if (!result2.sku) {
                result2.sku = "-";
              }
              if (result2.model.toLowerCase() === "virtualbox" || result2.model.toLowerCase() === "kvm" || result2.model.toLowerCase() === "virtual machine" || result2.model.toLowerCase() === "bochs" || result2.model.toLowerCase().startsWith("vmware") || result2.model.toLowerCase().startsWith("droplet")) {
                result2.virtual = true;
                switch (result2.model.toLowerCase()) {
                  case "virtualbox":
                    result2.virtualHost = "VirtualBox";
                    break;
                  case "vmware":
                    result2.virtualHost = "VMware";
                    break;
                  case "kvm":
                    result2.virtualHost = "KVM";
                    break;
                  case "bochs":
                    result2.virtualHost = "bochs";
                    break;
                }
              }
              if (result2.manufacturer.toLowerCase().startsWith("vmware") || result2.manufacturer.toLowerCase() === "xen") {
                result2.virtual = true;
                switch (result2.manufacturer.toLowerCase()) {
                  case "vmware":
                    result2.virtualHost = "VMware";
                    break;
                  case "xen":
                    result2.virtualHost = "Xen";
                    break;
                }
              }
              if (!result2.virtual) {
                try {
                  const disksById = execSync("ls -1 /dev/disk/by-id/ 2>/dev/null; pciconf -lv  2>/dev/null", util.execOptsLinux).toString();
                  if (disksById.indexOf("_QEMU_") >= 0 || disksById.indexOf("QEMU ") >= 0) {
                    result2.virtual = true;
                    result2.virtualHost = "QEMU";
                  }
                  if (disksById.indexOf("_VBOX_") >= 0) {
                    result2.virtual = true;
                    result2.virtualHost = "VirtualBox";
                  }
                } catch (e) {
                  util.noop();
                }
              }
              if (_freebsd || _openbsd || _netbsd) {
                try {
                  const lines2 = execSync("sysctl -i kern.hostuuid kern.hostid hw.model", util.execOptsLinux).toString().split("\n");
                  if (!result2.uuid) {
                    result2.uuid = util.getValue(lines2, "kern.hostuuid", ":").toLowerCase();
                  }
                  if (!result2.serial || result2.serial === "-") {
                    result2.serial = util.getValue(lines2, "kern.hostid", ":").toLowerCase();
                  }
                  if (!result2.model || result2.model === "Computer") {
                    result2.model = util.getValue(lines2, "hw.model", ":").trim();
                  }
                } catch (e) {
                  util.noop();
                }
              }
              if (!result2.virtual && (os.release().toLowerCase().indexOf("microsoft") >= 0 || os.release().toLowerCase().endsWith("wsl2"))) {
                const kernelVersion = parseFloat(os.release().toLowerCase());
                result2.virtual = true;
                result2.manufacturer = "Microsoft";
                result2.model = "WSL";
                result2.version = kernelVersion < 4.19 ? "1" : "2";
              }
              if ((_freebsd || _openbsd || _netbsd) && !result2.virtualHost) {
                try {
                  const procInfo = execSync("dmidecode -t 4", util.execOptsLinux);
                  const procLines = procInfo.toString().split("\n");
                  const procManufacturer = util.getValue(procLines, "manufacturer", ":", true);
                  switch (procManufacturer.toLowerCase()) {
                    case "virtualbox":
                      result2.virtualHost = "VirtualBox";
                      break;
                    case "vmware":
                      result2.virtualHost = "VMware";
                      break;
                    case "kvm":
                      result2.virtualHost = "KVM";
                      break;
                    case "bochs":
                      result2.virtualHost = "bochs";
                      break;
                  }
                } catch (e) {
                  util.noop();
                }
              }
              if (fs2.existsSync("/.dockerenv") || fs2.existsSync("/.dockerinit")) {
                result2.model = "Docker Container";
              }
              try {
                const stdout2 = execSync('dmesg 2>/dev/null | grep -iE "virtual|hypervisor" | grep -iE "vmware|qemu|kvm|xen" | grep -viE "Nested Virtualization|/virtual/"');
                let lines2 = stdout2.toString().split("\n");
                if (lines2.length > 0) {
                  if (result2.model === "Computer") {
                    result2.model = "Virtual machine";
                  }
                  result2.virtual = true;
                  if (stdout2.toString().toLowerCase().indexOf("vmware") >= 0 && !result2.virtualHost) {
                    result2.virtualHost = "VMware";
                  }
                  if (stdout2.toString().toLowerCase().indexOf("qemu") >= 0 && !result2.virtualHost) {
                    result2.virtualHost = "QEMU";
                  }
                  if (stdout2.toString().toLowerCase().indexOf("xen") >= 0 && !result2.virtualHost) {
                    result2.virtualHost = "Xen";
                  }
                  if (stdout2.toString().toLowerCase().indexOf("kvm") >= 0 && !result2.virtualHost) {
                    result2.virtualHost = "KVM";
                  }
                }
              } catch (e) {
                util.noop();
              }
              if (result2.manufacturer === "" && result2.model === "Computer" && result2.version === "") {
                fs2.readFile("/proc/cpuinfo", function(error2, stdout2) {
                  if (!error2) {
                    let lines2 = stdout2.toString().split("\n");
                    result2.model = util.getValue(lines2, "hardware", ":", true).toUpperCase();
                    result2.version = util.getValue(lines2, "revision", ":", true).toLowerCase();
                    result2.serial = util.getValue(lines2, "serial", ":", true);
                    const model = util.getValue(lines2, "model:", ":", true);
                    if (util.isRaspberry(lines2)) {
                      const rPIRevision = util.decodePiCpuinfo(lines2);
                      result2.model = rPIRevision.model;
                      result2.version = rPIRevision.revisionCode;
                      result2.manufacturer = "Raspberry Pi Foundation";
                      result2.raspberry = {
                        manufacturer: rPIRevision.manufacturer,
                        processor: rPIRevision.processor,
                        type: rPIRevision.type,
                        revision: rPIRevision.revision
                      };
                    }
                  }
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                });
              } else {
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              }
            });
          }
          if (_darwin) {
            exec("ioreg -c IOPlatformExpertDevice -d 2", function(error, stdout) {
              if (!error) {
                let lines = stdout.toString().replace(/[<>"]/g, "").split("\n");
                const model = util.getAppleModel(util.getValue(lines, "model", "=", true));
                result2.manufacturer = util.getValue(lines, "manufacturer", "=", true);
                result2.model = model.key;
                result2.type = macOsChassisType(model.version);
                result2.version = model.version;
                result2.serial = util.getValue(lines, "ioplatformserialnumber", "=", true);
                result2.uuid = util.getValue(lines, "ioplatformuuid", "=", true).toLowerCase();
                result2.sku = util.getValue(lines, "board-id", "=", true) || util.getValue(lines, "target-sub-type", "=", true);
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_sunos) {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
          if (_windows) {
            try {
              util.powerShell("Get-CimInstance Win32_ComputerSystemProduct | select Name,Vendor,Version,IdentifyingNumber,UUID | fl").then((stdout, error) => {
                if (!error) {
                  let lines = stdout.split("\r\n");
                  result2.manufacturer = util.getValue(lines, "vendor", ":");
                  result2.model = util.getValue(lines, "name", ":");
                  result2.version = util.getValue(lines, "version", ":");
                  result2.serial = util.getValue(lines, "identifyingnumber", ":");
                  result2.uuid = util.getValue(lines, "uuid", ":").toLowerCase();
                  const model = result2.model.toLowerCase();
                  if (model === "virtualbox" || model === "kvm" || model === "virtual machine" || model === "bochs" || model.startsWith("vmware") || model.startsWith("qemu") || model.startsWith("parallels")) {
                    result2.virtual = true;
                    if (model.startsWith("virtualbox")) {
                      result2.virtualHost = "VirtualBox";
                    }
                    if (model.startsWith("vmware")) {
                      result2.virtualHost = "VMware";
                    }
                    if (model.startsWith("kvm")) {
                      result2.virtualHost = "KVM";
                    }
                    if (model.startsWith("bochs")) {
                      result2.virtualHost = "bochs";
                    }
                    if (model.startsWith("qemu")) {
                      result2.virtualHost = "KVM";
                    }
                    if (model.startsWith("parallels")) {
                      result2.virtualHost = "Parallels";
                    }
                  }
                  const manufacturer = result2.manufacturer.toLowerCase();
                  if (manufacturer.startsWith("vmware") || manufacturer.startsWith("qemu") || manufacturer === "xen" || manufacturer.startsWith("parallels")) {
                    result2.virtual = true;
                    if (manufacturer.startsWith("vmware")) {
                      result2.virtualHost = "VMware";
                    }
                    if (manufacturer.startsWith("xen")) {
                      result2.virtualHost = "Xen";
                    }
                    if (manufacturer.startsWith("qemu")) {
                      result2.virtualHost = "KVM";
                    }
                    if (manufacturer.startsWith("parallels")) {
                      result2.virtualHost = "Parallels";
                    }
                  }
                  util.powerShell('Get-CimInstance MS_Systeminformation -Namespace "root/wmi" | select systemsku | fl ').then((stdout2, error2) => {
                    if (!error2) {
                      let lines2 = stdout2.split("\r\n");
                      result2.sku = util.getValue(lines2, "systemsku", ":");
                    }
                    if (!result2.virtual) {
                      util.powerShell("Get-CimInstance Win32_bios | select Version, SerialNumber, SMBIOSBIOSVersion").then((stdout3, error3) => {
                        if (!error3) {
                          let lines2 = stdout3.toString();
                          if (lines2.indexOf("VRTUAL") >= 0 || lines2.indexOf("A M I ") >= 0 || lines2.indexOf("VirtualBox") >= 0 || lines2.indexOf("VMWare") >= 0 || lines2.indexOf("Xen") >= 0 || lines2.indexOf("Parallels") >= 0) {
                            result2.virtual = true;
                            if (lines2.indexOf("VirtualBox") >= 0 && !result2.virtualHost) {
                              result2.virtualHost = "VirtualBox";
                            }
                            if (lines2.indexOf("VMware") >= 0 && !result2.virtualHost) {
                              result2.virtualHost = "VMware";
                            }
                            if (lines2.indexOf("Xen") >= 0 && !result2.virtualHost) {
                              result2.virtualHost = "Xen";
                            }
                            if (lines2.indexOf("VRTUAL") >= 0 && !result2.virtualHost) {
                              result2.virtualHost = "Hyper-V";
                            }
                            if (lines2.indexOf("A M I") >= 0 && !result2.virtualHost) {
                              result2.virtualHost = "Virtual PC";
                            }
                            if (lines2.indexOf("Parallels") >= 0 && !result2.virtualHost) {
                              result2.virtualHost = "Parallels";
                            }
                          }
                          if (callback) {
                            callback(result2);
                          }
                          resolve(result2);
                        } else {
                          if (callback) {
                            callback(result2);
                          }
                          resolve(result2);
                        }
                      });
                    } else {
                      if (callback) {
                        callback(result2);
                      }
                      resolve(result2);
                    }
                  });
                } else {
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                }
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    }
    exports2.system = system;
    function cleanDefaults(s) {
      const cmpStr = s.toLowerCase();
      if (cmpStr.indexOf("o.e.m.") === -1 && cmpStr.indexOf("default string") === -1 && cmpStr !== "default") {
        return s || "";
      }
      return "";
    }
    function bios(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = {
            vendor: "",
            version: "",
            releaseDate: "",
            revision: ""
          };
          let cmd = "";
          if (_linux || _freebsd || _openbsd || _netbsd) {
            if (process.arch === "arm") {
              cmd = "cat /proc/cpuinfo | grep Serial";
            } else {
              cmd = "export LC_ALL=C; dmidecode -t bios 2>/dev/null; unset LC_ALL";
            }
            exec(cmd, function(error, stdout) {
              let lines = stdout.toString().split("\n");
              result2.vendor = util.getValue(lines, "Vendor");
              result2.version = util.getValue(lines, "Version");
              let datetime = util.getValue(lines, "Release Date");
              result2.releaseDate = util.parseDateTime(datetime).date;
              result2.revision = util.getValue(lines, "BIOS Revision");
              result2.serial = util.getValue(lines, "SerialNumber");
              let language = util.getValue(lines, "Currently Installed Language").split("|")[0];
              if (language) {
                result2.language = language;
              }
              if (lines.length && stdout.toString().indexOf("Characteristics:") >= 0) {
                const features = [];
                lines.forEach((line) => {
                  if (line.indexOf(" is supported") >= 0) {
                    const feature = line.split(" is supported")[0].trim();
                    features.push(feature);
                  }
                });
                result2.features = features;
              }
              const cmd2 = `echo -n "bios_date: "; cat /sys/devices/virtual/dmi/id/bios_date 2>/dev/null; echo;
            echo -n "bios_vendor: "; cat /sys/devices/virtual/dmi/id/bios_vendor 2>/dev/null; echo;
            echo -n "bios_version: "; cat /sys/devices/virtual/dmi/id/bios_version 2>/dev/null; echo;`;
              try {
                lines = execSync(cmd2, util.execOptsLinux).toString().split("\n");
                result2.vendor = !result2.vendor ? util.getValue(lines, "bios_vendor") : result2.vendor;
                result2.version = !result2.version ? util.getValue(lines, "bios_version") : result2.version;
                datetime = util.getValue(lines, "bios_date");
                result2.releaseDate = !result2.releaseDate ? util.parseDateTime(datetime).date : result2.releaseDate;
              } catch (e) {
                util.noop();
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_darwin) {
            result2.vendor = "Apple Inc.";
            exec(
              "system_profiler SPHardwareDataType -json",
              function(error, stdout) {
                try {
                  const hardwareData = JSON.parse(stdout.toString());
                  if (hardwareData && hardwareData.SPHardwareDataType && hardwareData.SPHardwareDataType.length) {
                    let bootRomVersion = hardwareData.SPHardwareDataType[0].boot_rom_version;
                    bootRomVersion = bootRomVersion ? bootRomVersion.split("(")[0].trim() : null;
                    result2.version = bootRomVersion;
                  }
                } catch (e) {
                  util.noop();
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              }
            );
          }
          if (_sunos) {
            result2.vendor = "Sun Microsystems";
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
          if (_windows) {
            try {
              util.powerShell('Get-CimInstance Win32_bios | select Description,Version,Manufacturer,@{n="ReleaseDate";e={$_.ReleaseDate.ToString("yyyy-MM-dd")}},BuildNumber,SerialNumber,SMBIOSBIOSVersion | fl').then((stdout, error) => {
                if (!error) {
                  let lines = stdout.toString().split("\r\n");
                  const description = util.getValue(lines, "description", ":");
                  const version = util.getValue(lines, "SMBIOSBIOSVersion", ":");
                  if (description.indexOf(" Version ") !== -1) {
                    result2.vendor = description.split(" Version ")[0].trim();
                    result2.version = description.split(" Version ")[1].trim();
                  } else if (description.indexOf(" Ver: ") !== -1) {
                    result2.vendor = util.getValue(lines, "manufacturer", ":");
                    result2.version = description.split(" Ver: ")[1].trim();
                  } else {
                    result2.vendor = util.getValue(lines, "manufacturer", ":");
                    result2.version = version || util.getValue(lines, "version", ":");
                  }
                  result2.releaseDate = util.getValue(lines, "releasedate", ":");
                  result2.revision = util.getValue(lines, "buildnumber", ":");
                  result2.serial = cleanDefaults(util.getValue(lines, "serialnumber", ":"));
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    }
    exports2.bios = bios;
    function baseboard(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = {
            manufacturer: "",
            model: "",
            version: "",
            serial: "-",
            assetTag: "-",
            memMax: null,
            memSlots: null
          };
          let cmd = "";
          if (_linux || _freebsd || _openbsd || _netbsd) {
            if (process.arch === "arm") {
              cmd = "cat /proc/cpuinfo | grep Serial";
            } else {
              cmd = "export LC_ALL=C; dmidecode -t 2 2>/dev/null; unset LC_ALL";
            }
            const workload = [];
            workload.push(execPromise(cmd));
            workload.push(execPromise("export LC_ALL=C; dmidecode -t memory 2>/dev/null"));
            util.promiseAll(
              workload
            ).then((data) => {
              let lines = data.results[0] ? data.results[0].toString().split("\n") : [""];
              result2.manufacturer = cleanDefaults(util.getValue(lines, "Manufacturer"));
              result2.model = cleanDefaults(util.getValue(lines, "Product Name"));
              result2.version = cleanDefaults(util.getValue(lines, "Version"));
              result2.serial = cleanDefaults(util.getValue(lines, "Serial Number"));
              result2.assetTag = cleanDefaults(util.getValue(lines, "Asset Tag"));
              const cmd2 = `echo -n "board_asset_tag: "; cat /sys/devices/virtual/dmi/id/board_asset_tag 2>/dev/null; echo;
            echo -n "board_name: "; cat /sys/devices/virtual/dmi/id/board_name 2>/dev/null; echo;
            echo -n "board_serial: "; cat /sys/devices/virtual/dmi/id/board_serial 2>/dev/null; echo;
            echo -n "board_vendor: "; cat /sys/devices/virtual/dmi/id/board_vendor 2>/dev/null; echo;
            echo -n "board_version: "; cat /sys/devices/virtual/dmi/id/board_version 2>/dev/null; echo;`;
              try {
                lines = execSync(cmd2, util.execOptsLinux).toString().split("\n");
                result2.manufacturer = cleanDefaults(!result2.manufacturer ? util.getValue(lines, "board_vendor") : result2.manufacturer);
                result2.model = cleanDefaults(!result2.model ? util.getValue(lines, "board_name") : result2.model);
                result2.version = cleanDefaults(!result2.version ? util.getValue(lines, "board_version") : result2.version);
                result2.serial = cleanDefaults(!result2.serial ? util.getValue(lines, "board_serial") : result2.serial);
                result2.assetTag = cleanDefaults(!result2.assetTag ? util.getValue(lines, "board_asset_tag") : result2.assetTag);
              } catch (e) {
                util.noop();
              }
              lines = data.results[1] ? data.results[1].toString().split("\n") : [""];
              result2.memMax = util.toInt(util.getValue(lines, "Maximum Capacity")) * 1024 * 1024 * 1024 || null;
              result2.memSlots = util.toInt(util.getValue(lines, "Number Of Devices")) || null;
              if (util.isRaspberry()) {
                const rpi = util.decodePiCpuinfo();
                result2.manufacturer = rpi.manufacturer;
                result2.model = "Raspberry Pi";
                result2.serial = rpi.serial;
                result2.version = rpi.type + " - " + rpi.revision;
                result2.memMax = os.totalmem();
                result2.memSlots = 0;
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_darwin) {
            const workload = [];
            workload.push(execPromise("ioreg -c IOPlatformExpertDevice -d 2"));
            workload.push(execPromise("system_profiler SPMemoryDataType"));
            util.promiseAll(
              workload
            ).then((data) => {
              let lines = data.results[0] ? data.results[0].toString().replace(/[<>"]/g, "").split("\n") : [""];
              result2.manufacturer = util.getValue(lines, "manufacturer", "=", true);
              result2.model = util.getValue(lines, "model", "=", true);
              result2.version = util.getValue(lines, "version", "=", true);
              result2.serial = util.getValue(lines, "ioplatformserialnumber", "=", true);
              result2.assetTag = util.getValue(lines, "board-id", "=", true);
              let devices = data.results[1] ? data.results[1].toString().split("        BANK ") : [""];
              if (devices.length === 1) {
                devices = data.results[1] ? data.results[1].toString().split("        DIMM") : [""];
              }
              devices.shift();
              result2.memSlots = devices.length;
              if (os.arch() === "arm64") {
                result2.memSlots = 0;
                result2.memMax = os.totalmem();
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_sunos) {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
          if (_windows) {
            try {
              const workload = [];
              const win10plus = parseInt(os.release()) >= 10;
              const maxCapacityAttribute = win10plus ? "MaxCapacityEx" : "MaxCapacity";
              workload.push(util.powerShell("Get-CimInstance Win32_baseboard | select Model,Manufacturer,Product,Version,SerialNumber,PartNumber,SKU | fl"));
              workload.push(util.powerShell(`Get-CimInstance Win32_physicalmemoryarray | select ${maxCapacityAttribute}, MemoryDevices | fl`));
              util.promiseAll(
                workload
              ).then((data) => {
                let lines = data.results[0] ? data.results[0].toString().split("\r\n") : [""];
                result2.manufacturer = cleanDefaults(util.getValue(lines, "manufacturer", ":"));
                result2.model = cleanDefaults(util.getValue(lines, "model", ":"));
                if (!result2.model) {
                  result2.model = cleanDefaults(util.getValue(lines, "product", ":"));
                }
                result2.version = cleanDefaults(util.getValue(lines, "version", ":"));
                result2.serial = cleanDefaults(util.getValue(lines, "serialnumber", ":"));
                result2.assetTag = cleanDefaults(util.getValue(lines, "partnumber", ":"));
                if (!result2.assetTag) {
                  result2.assetTag = cleanDefaults(util.getValue(lines, "sku", ":"));
                }
                lines = data.results[1] ? data.results[1].toString().split("\r\n") : [""];
                result2.memMax = util.toInt(util.getValue(lines, maxCapacityAttribute, ":")) * (win10plus ? 1024 : 1) || null;
                result2.memSlots = util.toInt(util.getValue(lines, "MemoryDevices", ":")) || null;
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    }
    exports2.baseboard = baseboard;
    function macOsChassisType(model) {
      model = model.toLowerCase();
      if (model.indexOf("macbookair") >= 0 || model.indexOf("macbook air") >= 0) {
        return "Notebook";
      }
      if (model.indexOf("macbookpro") >= 0 || model.indexOf("macbook pro") >= 0) {
        return "Notebook";
      }
      if (model.indexOf("macbook") >= 0) {
        return "Notebook";
      }
      if (model.indexOf("macmini") >= 0 || model.indexOf("mac mini") >= 0) {
        return "Desktop";
      }
      if (model.indexOf("imac") >= 0) {
        return "Desktop";
      }
      if (model.indexOf("macstudio") >= 0 || model.indexOf("mac studio") >= 0) {
        return "Desktop";
      }
      if (model.indexOf("macpro") >= 0 || model.indexOf("mac pro") >= 0) {
        return "Tower";
      }
      return "Other";
    }
    function chassis(callback) {
      const chassisTypes = [
        "Other",
        "Unknown",
        "Desktop",
        "Low Profile Desktop",
        "Pizza Box",
        "Mini Tower",
        "Tower",
        "Portable",
        "Laptop",
        "Notebook",
        "Hand Held",
        "Docking Station",
        "All in One",
        "Sub Notebook",
        "Space-Saving",
        "Lunch Box",
        "Main System Chassis",
        "Expansion Chassis",
        "SubChassis",
        "Bus Expansion Chassis",
        "Peripheral Chassis",
        "Storage Chassis",
        "Rack Mount Chassis",
        "Sealed-Case PC",
        "Multi-System Chassis",
        "Compact PCI",
        "Advanced TCA",
        "Blade",
        "Blade Enclosure",
        "Tablet",
        "Convertible",
        "Detachable",
        "IoT Gateway ",
        "Embedded PC",
        "Mini PC",
        "Stick PC"
      ];
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = {
            manufacturer: "",
            model: "",
            type: "",
            version: "",
            serial: "-",
            assetTag: "-",
            sku: ""
          };
          if (_linux || _freebsd || _openbsd || _netbsd) {
            const cmd = `echo -n "chassis_asset_tag: "; cat /sys/devices/virtual/dmi/id/chassis_asset_tag 2>/dev/null; echo;
            echo -n "chassis_serial: "; cat /sys/devices/virtual/dmi/id/chassis_serial 2>/dev/null; echo;
            echo -n "chassis_type: "; cat /sys/devices/virtual/dmi/id/chassis_type 2>/dev/null; echo;
            echo -n "chassis_vendor: "; cat /sys/devices/virtual/dmi/id/chassis_vendor 2>/dev/null; echo;
            echo -n "chassis_version: "; cat /sys/devices/virtual/dmi/id/chassis_version 2>/dev/null; echo;`;
            exec(cmd, function(error, stdout) {
              let lines = stdout.toString().split("\n");
              result2.manufacturer = cleanDefaults(util.getValue(lines, "chassis_vendor"));
              const ctype = parseInt(util.getValue(lines, "chassis_type").replace(/\D/g, ""));
              result2.type = cleanDefaults(ctype && !isNaN(ctype) && ctype < chassisTypes.length ? chassisTypes[ctype - 1] : "");
              result2.version = cleanDefaults(util.getValue(lines, "chassis_version"));
              result2.serial = cleanDefaults(util.getValue(lines, "chassis_serial"));
              result2.assetTag = cleanDefaults(util.getValue(lines, "chassis_asset_tag"));
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_darwin) {
            exec("ioreg -c IOPlatformExpertDevice -d 2", function(error, stdout) {
              if (!error) {
                let lines = stdout.toString().replace(/[<>"]/g, "").split("\n");
                const model = util.getAppleModel(util.getValue(lines, "model", "=", true));
                result2.manufacturer = util.getValue(lines, "manufacturer", "=", true);
                result2.model = model.key;
                result2.type = macOsChassisType(model.model);
                result2.version = model.version;
                result2.serial = util.getValue(lines, "ioplatformserialnumber", "=", true);
                result2.assetTag = util.getValue(lines, "board-id", "=", true) || util.getValue(lines, "target-type", "=", true);
                result2.sku = util.getValue(lines, "target-sub-type", "=", true);
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_sunos) {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
          if (_windows) {
            try {
              util.powerShell("Get-CimInstance Win32_SystemEnclosure | select Model,Manufacturer,ChassisTypes,Version,SerialNumber,PartNumber,SKU,SMBIOSAssetTag | fl").then((stdout, error) => {
                if (!error) {
                  let lines = stdout.toString().split("\r\n");
                  result2.manufacturer = cleanDefaults(util.getValue(lines, "manufacturer", ":"));
                  result2.model = cleanDefaults(util.getValue(lines, "model", ":"));
                  const ctype = parseInt(util.getValue(lines, "ChassisTypes", ":").replace(/\D/g, ""));
                  result2.type = ctype && !isNaN(ctype) && ctype < chassisTypes.length ? chassisTypes[ctype - 1] : "";
                  result2.version = cleanDefaults(util.getValue(lines, "version", ":"));
                  result2.serial = cleanDefaults(util.getValue(lines, "serialnumber", ":"));
                  result2.assetTag = cleanDefaults(util.getValue(lines, "partnumber", ":"));
                  if (!result2.assetTag) {
                    result2.assetTag = cleanDefaults(util.getValue(lines, "SMBIOSAssetTag", ":"));
                  }
                  result2.sku = cleanDefaults(util.getValue(lines, "sku", ":"));
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    }
    exports2.chassis = chassis;
  }
});

// node_modules/systeminformation/lib/cpu.js
var require_cpu = __commonJS({
  "node_modules/systeminformation/lib/cpu.js"(exports2) {
    "use strict";
    var os = require("os");
    var exec = require("child_process").exec;
    var execSync = require("child_process").execSync;
    var fs2 = require("fs");
    var util = require_util();
    var _platform = process.platform;
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _sunos = _platform === "sunos";
    var _cpu_speed = 0;
    var _current_cpu = {
      user: 0,
      nice: 0,
      system: 0,
      idle: 0,
      irq: 0,
      steal: 0,
      guest: 0,
      load: 0,
      tick: 0,
      ms: 0,
      currentLoad: 0,
      currentLoadUser: 0,
      currentLoadSystem: 0,
      currentLoadNice: 0,
      currentLoadIdle: 0,
      currentLoadIrq: 0,
      currentLoadSteal: 0,
      currentLoadGuest: 0,
      rawCurrentLoad: 0,
      rawCurrentLoadUser: 0,
      rawCurrentLoadSystem: 0,
      rawCurrentLoadNice: 0,
      rawCurrentLoadIdle: 0,
      rawCurrentLoadIrq: 0,
      rawCurrentLoadSteal: 0,
      rawCurrentLoadGuest: 0
    };
    var _cpus = [];
    var _corecount = 0;
    var AMDBaseFrequencies = {
      "8346": "1.8",
      "8347": "1.9",
      "8350": "2.0",
      "8354": "2.2",
      "8356|SE": "2.4",
      "8356": "2.3",
      "8360": "2.5",
      "2372": "2.1",
      "2373": "2.1",
      "2374": "2.2",
      "2376": "2.3",
      "2377": "2.3",
      "2378": "2.4",
      "2379": "2.4",
      "2380": "2.5",
      "2381": "2.5",
      "2382": "2.6",
      "2384": "2.7",
      "2386": "2.8",
      "2387": "2.8",
      "2389": "2.9",
      "2393": "3.1",
      "8374": "2.2",
      "8376": "2.3",
      "8378": "2.4",
      "8379": "2.4",
      "8380": "2.5",
      "8381": "2.5",
      "8382": "2.6",
      "8384": "2.7",
      "8386": "2.8",
      "8387": "2.8",
      "8389": "2.9",
      "8393": "3.1",
      "2419EE": "1.8",
      "2423HE": "2.0",
      "2425HE": "2.1",
      "2427": "2.2",
      "2431": "2.4",
      "2435": "2.6",
      "2439SE": "2.8",
      "8425HE": "2.1",
      "8431": "2.4",
      "8435": "2.6",
      "8439SE": "2.8",
      "4122": "2.2",
      "4130": "2.6",
      "4162EE": "1.7",
      "4164EE": "1.8",
      "4170HE": "2.1",
      "4174HE": "2.3",
      "4176HE": "2.4",
      "4180": "2.6",
      "4184": "2.8",
      "6124HE": "1.8",
      "6128HE": "2.0",
      "6132HE": "2.2",
      "6128": "2.0",
      "6134": "2.3",
      "6136": "2.4",
      "6140": "2.6",
      "6164HE": "1.7",
      "6166HE": "1.8",
      "6168": "1.9",
      "6172": "2.1",
      "6174": "2.2",
      "6176": "2.3",
      "6176SE": "2.3",
      "6180SE": "2.5",
      "3250": "2.5",
      "3260": "2.7",
      "3280": "2.4",
      "4226": "2.7",
      "4228": "2.8",
      "4230": "2.9",
      "4234": "3.1",
      "4238": "3.3",
      "4240": "3.4",
      "4256": "1.6",
      "4274": "2.5",
      "4276": "2.6",
      "4280": "2.8",
      "4284": "3.0",
      "6204": "3.3",
      "6212": "2.6",
      "6220": "3.0",
      "6234": "2.4",
      "6238": "2.6",
      "6262HE": "1.6",
      "6272": "2.1",
      "6274": "2.2",
      "6276": "2.3",
      "6278": "2.4",
      "6282SE": "2.6",
      "6284SE": "2.7",
      "6308": "3.5",
      "6320": "2.8",
      "6328": "3.2",
      "6338P": "2.3",
      "6344": "2.6",
      "6348": "2.8",
      "6366": "1.8",
      "6370P": "2.0",
      "6376": "2.3",
      "6378": "2.4",
      "6380": "2.5",
      "6386": "2.8",
      "FX|4100": "3.6",
      "FX|4120": "3.9",
      "FX|4130": "3.8",
      "FX|4150": "3.8",
      "FX|4170": "4.2",
      "FX|6100": "3.3",
      "FX|6120": "3.6",
      "FX|6130": "3.6",
      "FX|6200": "3.8",
      "FX|8100": "2.8",
      "FX|8120": "3.1",
      "FX|8140": "3.2",
      "FX|8150": "3.6",
      "FX|8170": "3.9",
      "FX|4300": "3.8",
      "FX|4320": "4.0",
      "FX|4350": "4.2",
      "FX|6300": "3.5",
      "FX|6350": "3.9",
      "FX|8300": "3.3",
      "FX|8310": "3.4",
      "FX|8320": "3.5",
      "FX|8350": "4.0",
      "FX|8370": "4.0",
      "FX|9370": "4.4",
      "FX|9590": "4.7",
      "FX|8320E": "3.2",
      "FX|8370E": "3.3",
      // ZEN Desktop CPUs
      "1200": "3.1",
      "Pro 1200": "3.1",
      "1300X": "3.5",
      "Pro 1300": "3.5",
      "1400": "3.2",
      "1500X": "3.5",
      "Pro 1500": "3.5",
      "1600": "3.2",
      "1600X": "3.6",
      "Pro 1600": "3.2",
      "1700": "3.0",
      "Pro 1700": "3.0",
      "1700X": "3.4",
      "Pro 1700X": "3.4",
      "1800X": "3.6",
      "1900X": "3.8",
      "1920": "3.2",
      "1920X": "3.5",
      "1950X": "3.4",
      // ZEN Desktop APUs
      "200GE": "3.2",
      "Pro 200GE": "3.2",
      "220GE": "3.4",
      "240GE": "3.5",
      "3000G": "3.5",
      "300GE": "3.4",
      "3050GE": "3.4",
      "2200G": "3.5",
      "Pro 2200G": "3.5",
      "2200GE": "3.2",
      "Pro 2200GE": "3.2",
      "2400G": "3.6",
      "Pro 2400G": "3.6",
      "2400GE": "3.2",
      "Pro 2400GE": "3.2",
      // ZEN Mobile APUs
      "Pro 200U": "2.3",
      "300U": "2.4",
      "2200U": "2.5",
      "3200U": "2.6",
      "2300U": "2.0",
      "Pro 2300U": "2.0",
      "2500U": "2.0",
      "Pro 2500U": "2.2",
      "2600H": "3.2",
      "2700U": "2.0",
      "Pro 2700U": "2.2",
      "2800H": "3.3",
      // ZEN Server Processors
      "7351": "2.4",
      "7351P": "2.4",
      "7401": "2.0",
      "7401P": "2.0",
      "7551P": "2.0",
      "7551": "2.0",
      "7251": "2.1",
      "7261": "2.5",
      "7281": "2.1",
      "7301": "2.2",
      "7371": "3.1",
      "7451": "2.3",
      "7501": "2.0",
      "7571": "2.2",
      "7601": "2.2",
      // ZEN Embedded Processors
      "V1500B": "2.2",
      "V1780B": "3.35",
      "V1202B": "2.3",
      "V1404I": "2.0",
      "V1605B": "2.0",
      "V1756B": "3.25",
      "V1807B": "3.35",
      "3101": "2.1",
      "3151": "2.7",
      "3201": "1.5",
      "3251": "2.5",
      "3255": "2.5",
      "3301": "2.0",
      "3351": "1.9",
      "3401": "1.85",
      "3451": "2.15",
      // ZEN+ Desktop
      "1200|AF": "3.1",
      "2300X": "3.5",
      "2500X": "3.6",
      "2600": "3.4",
      "2600E": "3.1",
      "1600|AF": "3.2",
      "2600X": "3.6",
      "2700": "3.2",
      "2700E": "2.8",
      "Pro 2700": "3.2",
      "2700X": "3.7",
      "Pro 2700X": "3.6",
      "2920X": "3.5",
      "2950X": "3.5",
      "2970WX": "3.0",
      "2990WX": "3.0",
      // ZEN+ Desktop APU
      "Pro 300GE": "3.4",
      "Pro 3125GE": "3.4",
      "3150G": "3.5",
      "Pro 3150G": "3.5",
      "3150GE": "3.3",
      "Pro 3150GE": "3.3",
      "3200G": "3.6",
      "Pro 3200G": "3.6",
      "3200GE": "3.3",
      "Pro 3200GE": "3.3",
      "3350G": "3.6",
      "Pro 3350G": "3.6",
      "3350GE": "3.3",
      "Pro 3350GE": "3.3",
      "3400G": "3.7",
      "Pro 3400G": "3.7",
      "3400GE": "3.3",
      "Pro 3400GE": "3.3",
      // ZEN+ Mobile
      "3300U": "2.1",
      "PRO 3300U": "2.1",
      "3450U": "2.1",
      "3500U": "2.1",
      "PRO 3500U": "2.1",
      "3500C": "2.1",
      "3550H": "2.1",
      "3580U": "2.1",
      "3700U": "2.3",
      "PRO 3700U": "2.3",
      "3700C": "2.3",
      "3750H": "2.3",
      "3780U": "2.3",
      // ZEN2 Desktop CPUS
      "3100": "3.6",
      "3300X": "3.8",
      "3500": "3.6",
      "3500X": "3.6",
      "3600": "3.6",
      "Pro 3600": "3.6",
      "3600X": "3.8",
      "3600XT": "3.8",
      "Pro 3700": "3.6",
      "3700X": "3.6",
      "3800X": "3.9",
      "3800XT": "3.9",
      "3900": "3.1",
      "Pro 3900": "3.1",
      "3900X": "3.8",
      "3900XT": "3.8",
      "3950X": "3.5",
      "3960X": "3.8",
      "3970X": "3.7",
      "3990X": "2.9",
      "3945WX": "4.0",
      "3955WX": "3.9",
      "3975WX": "3.5",
      "3995WX": "2.7",
      // ZEN2 Desktop APUs
      "4300GE": "3.5",
      "Pro 4300GE": "3.5",
      "4300G": "3.8",
      "Pro 4300G": "3.8",
      "4600GE": "3.3",
      "Pro 4650GE": "3.3",
      "4600G": "3.7",
      "Pro 4650G": "3.7",
      "4700GE": "3.1",
      "Pro 4750GE": "3.1",
      "4700G": "3.6",
      "Pro 4750G": "3.6",
      "4300U": "2.7",
      "4450U": "2.5",
      "Pro 4450U": "2.5",
      "4500U": "2.3",
      "4600U": "2.1",
      "PRO 4650U": "2.1",
      "4680U": "2.1",
      "4600HS": "3.0",
      "4600H": "3.0",
      "4700U": "2.0",
      "PRO 4750U": "1.7",
      "4800U": "1.8",
      "4800HS": "2.9",
      "4800H": "2.9",
      "4900HS": "3.0",
      "4900H": "3.3",
      "5300U": "2.6",
      "5500U": "2.1",
      "5700U": "1.8",
      // ZEN2 - EPYC
      "7232P": "3.1",
      "7302P": "3.0",
      "7402P": "2.8",
      "7502P": "2.5",
      "7702P": "2.0",
      "7252": "3.1",
      "7262": "3.2",
      "7272": "2.9",
      "7282": "2.8",
      "7302": "3.0",
      "7352": "2.3",
      "7402": "2.8",
      "7452": "2.35",
      "7502": "2.5",
      "7532": "2.4",
      "7542": "2.9",
      "7552": "2.2",
      "7642": "2.3",
      "7662": "2.0",
      "7702": "2.0",
      "7742": "2.25",
      "7H12": "2.6",
      "7F32": "3.7",
      "7F52": "3.5",
      "7F72": "3.2",
      // Epyc (Milan)
      "7773X": "2.2",
      "7763": "2.45",
      "7713": "2.0",
      "7713P": "2.0",
      "7663": "2.0",
      "7643": "2.3",
      "7573X": "2.8",
      "75F3": "2.95",
      "7543": "2.8",
      "7543P": "2.8",
      "7513": "2.6",
      "7473X": "2.8",
      "7453": "2.75",
      "74F3": "3.2",
      "7443": "2.85",
      "7443P": "2.85",
      "7413": "2.65",
      "7373X": "3.05",
      "73F3": "3.5",
      "7343": "3.2",
      "7313": "3.0",
      "7313P": "3.0",
      "72F3": "3.7",
      // ZEN3
      "5600X": "3.7",
      "5800X": "3.8",
      "5900X": "3.7",
      "5950X": "3.4",
      "5945WX": "4.1",
      "5955WX": "4.0",
      "5965WX": "3.8",
      "5975WX": "3.6",
      "5995WX": "2.7",
      "7960X": "4.2",
      "7970X": "4.0",
      "7980X": "3.2",
      "7965WX": "4.2",
      "7975WX": "4.0",
      "7985WX": "3.2",
      "7995WX": "2.5",
      // ZEN4
      "9754": "2.25",
      "9754S": "2.25",
      "9734": "2.2",
      "9684X": "2.55",
      "9384X": "3.1",
      "9184X": "3.55",
      "9654P": "2.4",
      "9654": "2.4",
      "9634": "2.25",
      "9554P": "3.1",
      "9554": "3.1",
      "9534": "2.45",
      "9474F": "3.6",
      "9454P": "2.75",
      "9454": "2.75",
      "9374F": "3.85",
      "9354P": "3.25",
      "9354": "3.25",
      "9334": "2.7",
      "9274F": "4.05",
      "9254": "2.9",
      "9224": "2.5",
      "9174F": "4.1",
      "9124": "3.0"
    };
    var socketTypes = {
      1: "Other",
      2: "Unknown",
      3: "Daughter Board",
      4: "ZIF Socket",
      5: "Replacement/Piggy Back",
      6: "None",
      7: "LIF Socket",
      8: "Slot 1",
      9: "Slot 2",
      10: "370 Pin Socket",
      11: "Slot A",
      12: "Slot M",
      13: "423",
      14: "A (Socket 462)",
      15: "478",
      16: "754",
      17: "940",
      18: "939",
      19: "mPGA604",
      20: "LGA771",
      21: "LGA775",
      22: "S1",
      23: "AM2",
      24: "F (1207)",
      25: "LGA1366",
      26: "G34",
      27: "AM3",
      28: "C32",
      29: "LGA1156",
      30: "LGA1567",
      31: "PGA988A",
      32: "BGA1288",
      33: "rPGA988B",
      34: "BGA1023",
      35: "BGA1224",
      36: "LGA1155",
      37: "LGA1356",
      38: "LGA2011",
      39: "FS1",
      40: "FS2",
      41: "FM1",
      42: "FM2",
      43: "LGA2011-3",
      44: "LGA1356-3",
      45: "LGA1150",
      46: "BGA1168",
      47: "BGA1234",
      48: "BGA1364",
      49: "AM4",
      50: "LGA1151",
      51: "BGA1356",
      52: "BGA1440",
      53: "BGA1515",
      54: "LGA3647-1",
      55: "SP3",
      56: "SP3r2",
      57: "LGA2066",
      58: "BGA1392",
      59: "BGA1510",
      60: "BGA1528",
      61: "LGA4189",
      62: "LGA1200",
      63: "LGA4677",
      64: "LGA1700",
      65: "BGA1744",
      66: "BGA1781",
      67: "BGA1211",
      68: "BGA2422",
      69: "LGA1211",
      70: "LGA2422",
      71: "LGA5773",
      72: "BGA5773",
      73: "AM5",
      74: "SP5",
      75: "SP6",
      76: "BGA883",
      77: "BGA1190",
      78: "BGA4129",
      79: "LGA4710",
      80: "LGA7529",
      81: "BGA1964",
      82: "BGA1792",
      83: "BGA2049",
      84: "BGA2551",
      85: "LGA1851",
      86: "BGA2114",
      87: "BGA2833"
    };
    var socketTypesByName = {
      "LGA1150": "i7-5775C i3-4340 i3-4170 G3250 i3-4160T i3-4160 E3-1231 G3258 G3240 i7-4790S i7-4790K i7-4790 i5-4690K i5-4690 i5-4590T i5-4590S i5-4590 i5-4460 i3-4360 i3-4150 G1820 G3420 G3220 i7-4771 i5-4440 i3-4330 i3-4130T i3-4130 E3-1230 i7-4770S i7-4770K i7-4770 i5-4670K i5-4670 i5-4570T i5-4570S i5-4570 i5-4430",
      "LGA1151": "i9-9900KS E-2288G E-2224 G5420 i9-9900T i9-9900 i7-9700T i7-9700F i7-9700E i7-9700 i5-9600 i5-9500T i5-9500F i5-9500 i5-9400T i3-9350K i3-9300 i3-9100T i3-9100F i3-9100 G4930 i9-9900KF i7-9700KF i5-9600KF i5-9400F i5-9400 i3-9350KF i9-9900K i7-9700K i5-9600K G5500 G5400 i7-8700T i7-8086K i5-8600 i5-8500T i5-8500 i5-8400T i3-8300 i3-8100T G4900 i7-8700K i7-8700 i5-8600K i5-8400 i3-8350K i3-8100 E3-1270 G4600 G4560 i7-7700T i7-7700K i7-7700 i5-7600K i5-7600 i5-7500T i5-7500 i5-7400 i3-7350K i3-7300 i3-7100T i3-7100 G3930 G3900 G4400 i7-6700T i7-6700K i7-6700 i5-6600K i5-6600 i5-6500T i5-6500 i5-6400T i5-6400 i3-6300 i3-6100T i3-6100 E3-1270 E3-1270 T4500 T4400",
      "1155": "G440 G460 G465 G470 G530T G540T G550T G1610T G1620T G530 G540 G1610 G550 G1620 G555 G1630 i3-2100T i3-2120T i3-3220T i3-3240T i3-3250T i3-2100 i3-2105 i3-2102 i3-3210 i3-3220 i3-2125 i3-2120 i3-3225 i3-2130 i3-3245 i3-3240 i3-3250 i5-3570T i5-2500T i5-2400S i5-2405S i5-2390T i5-3330S i5-2500S i5-3335S i5-2300 i5-3450S i5-3340S i5-3470S i5-3475S i5-3470T i5-2310 i5-3550S i5-2320 i5-3330 i5-3350P i5-3450 i5-2400 i5-3340 i5-3570S i5-2380P i5-2450P i5-3470 i5-2500K i5-3550 i5-2500 i5-3570 i5-3570K i5-2550K i7-3770T i7-2600S i7-3770S i7-2600K i7-2600 i7-3770 i7-3770K i7-2700K G620T G630T G640T G2020T G645T G2100T G2030T G622 G860T G620 G632 G2120T G630 G640 G2010 G840 G2020 G850 G645 G2030 G860 G2120 G870 G2130 G2140 E3-1220L E3-1220L E3-1260L E3-1265L E3-1220 E3-1225 E3-1220 E3-1235 E3-1225 E3-1230 E3-1230 E3-1240 E3-1245 E3-1270 E3-1275 E3-1240 E3-1245 E3-1270 E3-1280 E3-1275 E3-1290 E3-1280 E3-1290"
    };
    function getSocketTypesByName(str) {
      let result2 = "";
      for (const key in socketTypesByName) {
        const names = socketTypesByName[key].split(" ");
        names.forEach((element) => {
          if (str.indexOf(element) >= 0) {
            result2 = key;
          }
        });
      }
      return result2;
    }
    function cpuManufacturer(str) {
      let result2 = str;
      str = str.toLowerCase();
      if (str.indexOf("intel") >= 0) {
        result2 = "Intel";
      }
      if (str.indexOf("amd") >= 0) {
        result2 = "AMD";
      }
      if (str.indexOf("qemu") >= 0) {
        result2 = "QEMU";
      }
      if (str.indexOf("hygon") >= 0) {
        result2 = "Hygon";
      }
      if (str.indexOf("centaur") >= 0) {
        result2 = "WinChip/Via";
      }
      if (str.indexOf("vmware") >= 0) {
        result2 = "VMware";
      }
      if (str.indexOf("Xen") >= 0) {
        result2 = "Xen Hypervisor";
      }
      if (str.indexOf("tcg") >= 0) {
        result2 = "QEMU";
      }
      if (str.indexOf("apple") >= 0) {
        result2 = "Apple";
      }
      if (str.indexOf("sifive") >= 0) {
        result2 = "SiFive";
      }
      if (str.indexOf("thead") >= 0) {
        result2 = "T-Head";
      }
      if (str.indexOf("andestech") >= 0) {
        result2 = "Andes Technology";
      }
      return result2;
    }
    function cpuBrandManufacturer(res) {
      res.brand = res.brand.replace(/\(R\)+/g, "\xAE").replace(/\s+/g, " ").trim();
      res.brand = res.brand.replace(/\(TM\)+/g, "\u2122").replace(/\s+/g, " ").trim();
      res.brand = res.brand.replace(/\(C\)+/g, "\xA9").replace(/\s+/g, " ").trim();
      res.brand = res.brand.replace(/CPU+/g, "").replace(/\s+/g, " ").trim();
      res.manufacturer = cpuManufacturer(res.brand);
      let parts = res.brand.split(" ");
      parts.shift();
      res.brand = parts.join(" ");
      return res;
    }
    function getAMDSpeed(brand) {
      let result2 = "0";
      for (let key in AMDBaseFrequencies) {
        if ({}.hasOwnProperty.call(AMDBaseFrequencies, key)) {
          let parts = key.split("|");
          let found = 0;
          parts.forEach((item) => {
            if (brand.indexOf(item) > -1) {
              found++;
            }
          });
          if (found === parts.length) {
            result2 = AMDBaseFrequencies[key];
          }
        }
      }
      return parseFloat(result2);
    }
    function getCpu() {
      return new Promise((resolve) => {
        process.nextTick(() => {
          const UNKNOWN = "unknown";
          let result2 = {
            manufacturer: UNKNOWN,
            brand: UNKNOWN,
            vendor: "",
            family: "",
            model: "",
            stepping: "",
            revision: "",
            voltage: "",
            speed: 0,
            speedMin: 0,
            speedMax: 0,
            governor: "",
            cores: util.cores(),
            physicalCores: util.cores(),
            performanceCores: util.cores(),
            efficiencyCores: 0,
            processors: 1,
            socket: "",
            flags: "",
            virtualization: false,
            cache: {}
          };
          cpuFlags().then((flags) => {
            result2.flags = flags;
            result2.virtualization = flags.indexOf("vmx") > -1 || flags.indexOf("svm") > -1;
            if (_darwin) {
              exec("sysctl machdep.cpu hw.cpufrequency_max hw.cpufrequency_min hw.packages hw.physicalcpu_max hw.ncpu hw.tbfrequency hw.cpufamily hw.cpusubfamily", function(error, stdout) {
                let lines = stdout.toString().split("\n");
                const modelline = util.getValue(lines, "machdep.cpu.brand_string");
                const modellineParts = modelline.split("@");
                result2.brand = modellineParts[0].trim();
                const speed = modellineParts[1] ? modellineParts[1].trim() : "0";
                result2.speed = parseFloat(speed.replace(/GHz+/g, ""));
                let tbFrequency = util.getValue(lines, "hw.tbfrequency") / 1e9;
                tbFrequency = tbFrequency < 0.1 ? tbFrequency * 100 : tbFrequency;
                result2.speed = result2.speed === 0 ? tbFrequency : result2.speed;
                _cpu_speed = result2.speed;
                result2 = cpuBrandManufacturer(result2);
                result2.speedMin = util.getValue(lines, "hw.cpufrequency_min") ? util.getValue(lines, "hw.cpufrequency_min") / 1e9 : result2.speed;
                result2.speedMax = util.getValue(lines, "hw.cpufrequency_max") ? util.getValue(lines, "hw.cpufrequency_max") / 1e9 : result2.speed;
                result2.vendor = util.getValue(lines, "machdep.cpu.vendor") || "Apple";
                result2.family = util.getValue(lines, "machdep.cpu.family") || util.getValue(lines, "hw.cpufamily");
                result2.model = util.getValue(lines, "machdep.cpu.model");
                result2.stepping = util.getValue(lines, "machdep.cpu.stepping") || util.getValue(lines, "hw.cpusubfamily");
                result2.virtualization = true;
                const countProcessors = util.getValue(lines, "hw.packages");
                const countCores = util.getValue(lines, "hw.physicalcpu_max");
                const countThreads = util.getValue(lines, "hw.ncpu");
                if (os.arch() === "arm64") {
                  result2.socket = "SOC";
                  try {
                    const clusters = execSync("ioreg -c IOPlatformDevice -d 3 -r | grep cluster-type").toString().split("\n");
                    const efficiencyCores = clusters.filter((line) => line.indexOf('"E"') >= 0).length;
                    const performanceCores = clusters.filter((line) => line.indexOf('"P"') >= 0).length;
                    result2.efficiencyCores = efficiencyCores;
                    result2.performanceCores = performanceCores;
                  } catch (e) {
                    util.noop();
                  }
                }
                if (countProcessors) {
                  result2.processors = parseInt(countProcessors) || 1;
                }
                if (countCores && countThreads) {
                  result2.cores = parseInt(countThreads) || util.cores();
                  result2.physicalCores = parseInt(countCores) || util.cores();
                }
                cpuCache().then((res) => {
                  result2.cache = res;
                  resolve(result2);
                });
              });
            }
            if (_linux) {
              let modelline = "";
              let lines = [];
              if (os.cpus()[0] && os.cpus()[0].model) {
                modelline = os.cpus()[0].model;
              }
              exec('export LC_ALL=C; lscpu; echo -n "Governor: "; cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 2>/dev/null; echo; unset LC_ALL', function(error, stdout) {
                if (!error) {
                  lines = stdout.toString().split("\n");
                }
                modelline = util.getValue(lines, "model name") || modelline;
                modelline = util.getValue(lines, "bios model name") || modelline;
                modelline = util.cleanString(modelline);
                const modellineParts = modelline.split("@");
                result2.brand = modellineParts[0].trim();
                result2.speed = modellineParts[1] ? parseFloat(modellineParts[1].trim()) : 0;
                if (result2.speed === 0 && (result2.brand.indexOf("AMD") > -1 || result2.brand.toLowerCase().indexOf("ryzen") > -1)) {
                  result2.speed = getAMDSpeed(result2.brand);
                }
                if (result2.speed === 0) {
                  const current = getCpuCurrentSpeedSync();
                  if (current.avg !== 0) {
                    result2.speed = current.avg;
                  }
                }
                _cpu_speed = result2.speed;
                result2.speedMin = Math.round(parseFloat(util.getValue(lines, "cpu min mhz").replace(/,/g, ".")) / 10) / 100;
                result2.speedMax = Math.round(parseFloat(util.getValue(lines, "cpu max mhz").replace(/,/g, ".")) / 10) / 100;
                result2 = cpuBrandManufacturer(result2);
                result2.vendor = cpuManufacturer(util.getValue(lines, "vendor id"));
                result2.family = util.getValue(lines, "cpu family");
                result2.model = util.getValue(lines, "model:");
                result2.stepping = util.getValue(lines, "stepping");
                result2.revision = util.getValue(lines, "cpu revision");
                result2.cache.l1d = util.getValue(lines, "l1d cache");
                if (result2.cache.l1d) {
                  result2.cache.l1d = parseInt(result2.cache.l1d) * (result2.cache.l1d.indexOf("M") !== -1 ? 1024 * 1024 : result2.cache.l1d.indexOf("K") !== -1 ? 1024 : 1);
                }
                result2.cache.l1i = util.getValue(lines, "l1i cache");
                if (result2.cache.l1i) {
                  result2.cache.l1i = parseInt(result2.cache.l1i) * (result2.cache.l1i.indexOf("M") !== -1 ? 1024 * 1024 : result2.cache.l1i.indexOf("K") !== -1 ? 1024 : 1);
                }
                result2.cache.l2 = util.getValue(lines, "l2 cache");
                if (result2.cache.l2) {
                  result2.cache.l2 = parseInt(result2.cache.l2) * (result2.cache.l2.indexOf("M") !== -1 ? 1024 * 1024 : result2.cache.l2.indexOf("K") !== -1 ? 1024 : 1);
                }
                result2.cache.l3 = util.getValue(lines, "l3 cache");
                if (result2.cache.l3) {
                  result2.cache.l3 = parseInt(result2.cache.l3) * (result2.cache.l3.indexOf("M") !== -1 ? 1024 * 1024 : result2.cache.l3.indexOf("K") !== -1 ? 1024 : 1);
                }
                const threadsPerCore = util.getValue(lines, "thread(s) per core") || "1";
                const processors = util.getValue(lines, "socket(s)") || "1";
                const threadsPerCoreInt = parseInt(threadsPerCore, 10);
                const processorsInt = parseInt(processors, 10) || 1;
                const coresPerSocket = parseInt(util.getValue(lines, "core(s) per socket"), 10);
                result2.physicalCores = coresPerSocket ? coresPerSocket * processorsInt : result2.cores / threadsPerCoreInt;
                result2.performanceCores = threadsPerCoreInt > 1 ? result2.cores - result2.physicalCores : result2.cores;
                result2.efficiencyCores = threadsPerCoreInt > 1 ? result2.cores - threadsPerCoreInt * result2.performanceCores : 0;
                result2.processors = processorsInt;
                result2.governor = util.getValue(lines, "governor") || "";
                if (result2.vendor === "ARM" && util.isRaspberry()) {
                  const rPIRevision = util.decodePiCpuinfo();
                  result2.family = result2.manufacturer;
                  result2.manufacturer = rPIRevision.manufacturer;
                  result2.brand = rPIRevision.processor;
                  result2.revision = rPIRevision.revisionCode;
                  result2.socket = "SOC";
                }
                if (util.getValue(lines, "architecture") === "riscv64") {
                  const linesRiscV = fs2.readFileSync("/proc/cpuinfo").toString().split("\n");
                  const uarch = util.getValue(linesRiscV, "uarch") || "";
                  if (uarch.indexOf(",") > -1) {
                    const split = uarch.split(",");
                    result2.manufacturer = cpuManufacturer(split[0]);
                    result2.brand = split[1];
                  }
                }
                let lines2 = [];
                exec('export LC_ALL=C; dmidecode \u2013t 4 2>/dev/null | grep "Upgrade: Socket"; unset LC_ALL', function(error2, stdout2) {
                  lines2 = stdout2.toString().split("\n");
                  if (lines2 && lines2.length) {
                    result2.socket = util.getValue(lines2, "Upgrade").replace("Socket", "").trim() || result2.socket;
                  }
                  resolve(result2);
                });
              });
            }
            if (_freebsd || _openbsd || _netbsd) {
              let modelline = "";
              let lines = [];
              if (os.cpus()[0] && os.cpus()[0].model) {
                modelline = os.cpus()[0].model;
              }
              exec("export LC_ALL=C; dmidecode -t 4; dmidecode -t 7 unset LC_ALL", function(error, stdout) {
                let cache = [];
                if (!error) {
                  const data = stdout.toString().split("# dmidecode");
                  const processor = data.length > 1 ? data[1] : "";
                  cache = data.length > 2 ? data[2].split("Cache Information") : [];
                  lines = processor.split("\n");
                }
                result2.brand = modelline.split("@")[0].trim();
                result2.speed = modelline.split("@")[1] ? parseFloat(modelline.split("@")[1].trim()) : 0;
                if (result2.speed === 0 && (result2.brand.indexOf("AMD") > -1 || result2.brand.toLowerCase().indexOf("ryzen") > -1)) {
                  result2.speed = getAMDSpeed(result2.brand);
                }
                if (result2.speed === 0) {
                  const current = getCpuCurrentSpeedSync();
                  if (current.avg !== 0) {
                    result2.speed = current.avg;
                  }
                }
                _cpu_speed = result2.speed;
                result2.speedMin = result2.speed;
                result2.speedMax = Math.round(parseFloat(util.getValue(lines, "max speed").replace(/Mhz/g, "")) / 10) / 100;
                result2 = cpuBrandManufacturer(result2);
                result2.vendor = cpuManufacturer(util.getValue(lines, "manufacturer"));
                let sig = util.getValue(lines, "signature");
                sig = sig.split(",");
                for (let i = 0; i < sig.length; i++) {
                  sig[i] = sig[i].trim();
                }
                result2.family = util.getValue(sig, "Family", " ", true);
                result2.model = util.getValue(sig, "Model", " ", true);
                result2.stepping = util.getValue(sig, "Stepping", " ", true);
                result2.revision = "";
                const voltage = parseFloat(util.getValue(lines, "voltage"));
                result2.voltage = isNaN(voltage) ? "" : voltage.toFixed(2);
                for (let i = 0; i < cache.length; i++) {
                  lines = cache[i].split("\n");
                  let cacheType = util.getValue(lines, "Socket Designation").toLowerCase().replace(" ", "-").split("-");
                  cacheType = cacheType.length ? cacheType[0] : "";
                  const sizeParts = util.getValue(lines, "Installed Size").split(" ");
                  let size = parseInt(sizeParts[0], 10);
                  const unit = sizeParts.length > 1 ? sizeParts[1] : "kb";
                  size = size * (unit === "kb" ? 1024 : unit === "mb" ? 1024 * 1024 : unit === "gb" ? 1024 * 1024 * 1024 : 1);
                  if (cacheType) {
                    if (cacheType === "l1") {
                      result2.cache[cacheType + "d"] = size / 2;
                      result2.cache[cacheType + "i"] = size / 2;
                    } else {
                      result2.cache[cacheType] = size;
                    }
                  }
                }
                result2.socket = util.getValue(lines, "Upgrade").replace("Socket", "").trim();
                const threadCount = util.getValue(lines, "thread count").trim();
                const coreCount = util.getValue(lines, "core count").trim();
                if (coreCount && threadCount) {
                  result2.cores = parseInt(threadCount, 10);
                  result2.physicalCores = parseInt(coreCount, 10);
                }
                resolve(result2);
              });
            }
            if (_sunos) {
              resolve(result2);
            }
            if (_windows) {
              try {
                const workload = [];
                workload.push(util.powerShell("Get-CimInstance Win32_processor | select Name, Revision, L2CacheSize, L3CacheSize, Manufacturer, MaxClockSpeed, Description, UpgradeMethod, Caption, NumberOfLogicalProcessors, NumberOfCores | fl"));
                workload.push(util.powerShell("Get-CimInstance Win32_CacheMemory | select CacheType,InstalledSize,Level | fl"));
                workload.push(util.powerShell("(Get-CimInstance Win32_ComputerSystem).HypervisorPresent"));
                Promise.all(
                  workload
                ).then((data) => {
                  let lines = data[0].split("\r\n");
                  let name = util.getValue(lines, "name", ":") || "";
                  if (name.indexOf("@") >= 0) {
                    result2.brand = name.split("@")[0].trim();
                    result2.speed = name.split("@")[1] ? parseFloat(name.split("@")[1].trim()) : 0;
                    _cpu_speed = result2.speed;
                  } else {
                    result2.brand = name.trim();
                    result2.speed = 0;
                  }
                  result2 = cpuBrandManufacturer(result2);
                  result2.revision = util.getValue(lines, "revision", ":");
                  result2.vendor = util.getValue(lines, "manufacturer", ":");
                  result2.speedMax = Math.round(parseFloat(util.getValue(lines, "maxclockspeed", ":").replace(/,/g, ".")) / 10) / 100;
                  if (result2.speed === 0 && (result2.brand.indexOf("AMD") > -1 || result2.brand.toLowerCase().indexOf("ryzen") > -1)) {
                    result2.speed = getAMDSpeed(result2.brand);
                  }
                  if (result2.speed === 0) {
                    result2.speed = result2.speedMax;
                  }
                  result2.speedMin = result2.speed;
                  let description = util.getValue(lines, "description", ":").split(" ");
                  for (let i = 0; i < description.length; i++) {
                    if (description[i].toLowerCase().startsWith("family") && i + 1 < description.length && description[i + 1]) {
                      result2.family = description[i + 1];
                    }
                    if (description[i].toLowerCase().startsWith("model") && i + 1 < description.length && description[i + 1]) {
                      result2.model = description[i + 1];
                    }
                    if (description[i].toLowerCase().startsWith("stepping") && i + 1 < description.length && description[i + 1]) {
                      result2.stepping = description[i + 1];
                    }
                  }
                  const socketId = util.getValue(lines, "UpgradeMethod", ":");
                  if (socketTypes[socketId]) {
                    result2.socket = socketTypes[socketId];
                  }
                  const socketByName = getSocketTypesByName(name);
                  if (socketByName) {
                    result2.socket = socketByName;
                  }
                  const countProcessors = util.countLines(lines, "Caption");
                  const countThreads = util.getValue(lines, "NumberOfLogicalProcessors", ":");
                  const countCores = util.getValue(lines, "NumberOfCores", ":");
                  if (countProcessors) {
                    result2.processors = parseInt(countProcessors) || 1;
                  }
                  if (countCores && countThreads) {
                    result2.cores = parseInt(countThreads) || util.cores();
                    result2.physicalCores = parseInt(countCores) || util.cores();
                  }
                  if (countProcessors > 1) {
                    result2.cores = result2.cores * countProcessors;
                    result2.physicalCores = result2.physicalCores * countProcessors;
                  }
                  result2.cache = parseWinCache(data[0], data[1]);
                  const hyperv = data[2] ? data[2].toString().toLowerCase() : "";
                  result2.virtualization = hyperv.indexOf("true") !== -1;
                  resolve(result2);
                });
              } catch (e) {
                resolve(result2);
              }
            }
          });
        });
      });
    }
    function cpu(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          getCpu().then((result2) => {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          });
        });
      });
    }
    exports2.cpu = cpu;
    function getCpuCurrentSpeedSync() {
      let cpus = os.cpus();
      let minFreq = 999999999;
      let maxFreq = 0;
      let avgFreq = 0;
      let cores = [];
      let speeds = [];
      if (cpus && cpus.length && cpus[0].hasOwnProperty("speed")) {
        for (let i in cpus) {
          speeds.push(cpus[i].speed > 100 ? (cpus[i].speed + 1) / 1e3 : cpus[i].speed / 10);
        }
      } else if (_linux) {
        try {
          const speedStrings = execSync('cat /proc/cpuinfo | grep "cpu MHz" | cut -d " " -f 3', util.execOptsLinux).toString().split("\n").filter((line) => line.length > 0);
          for (let i in speedStrings) {
            speeds.push(Math.floor(parseInt(speedStrings[i], 10) / 10) / 100);
          }
        } catch {
          util.noop();
        }
      }
      if (speeds && speeds.length) {
        try {
          for (let i in speeds) {
            avgFreq = avgFreq + speeds[i];
            if (speeds[i] > maxFreq) {
              maxFreq = speeds[i];
            }
            if (speeds[i] < minFreq) {
              minFreq = speeds[i];
            }
            cores.push(parseFloat(speeds[i].toFixed(2)));
          }
          avgFreq = avgFreq / speeds.length;
          return {
            min: parseFloat(minFreq.toFixed(2)),
            max: parseFloat(maxFreq.toFixed(2)),
            avg: parseFloat(avgFreq.toFixed(2)),
            cores
          };
        } catch (e) {
          return {
            min: 0,
            max: 0,
            avg: 0,
            cores
          };
        }
      } else {
        return {
          min: 0,
          max: 0,
          avg: 0,
          cores
        };
      }
    }
    function cpuCurrentSpeed(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = getCpuCurrentSpeedSync();
          if (result2.avg === 0 && _cpu_speed !== 0) {
            const currCpuSpeed = parseFloat(_cpu_speed);
            result2 = {
              min: currCpuSpeed,
              max: currCpuSpeed,
              avg: currCpuSpeed,
              cores: []
            };
          }
          if (callback) {
            callback(result2);
          }
          resolve(result2);
        });
      });
    }
    exports2.cpuCurrentSpeed = cpuCurrentSpeed;
    function cpuTemperature(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = {
            main: null,
            cores: [],
            max: null,
            socket: [],
            chipset: null
          };
          if (_linux) {
            try {
              const cmd2 = 'cat /sys/class/thermal/thermal_zone*/type  2>/dev/null; echo "-----"; cat /sys/class/thermal/thermal_zone*/temp 2>/dev/null;';
              const parts = execSync(cmd2, util.execOptsLinux).toString().split("-----\n");
              if (parts.length === 2) {
                const lines = parts[0].split("\n");
                const lines2 = parts[1].split("\n");
                for (let i = 0; i < lines.length; i++) {
                  const line = lines[i].trim();
                  if (line.startsWith("acpi") && lines2[i]) {
                    result2.socket.push(Math.round(parseInt(lines2[i], 10) / 100) / 10);
                  }
                  if (line.startsWith("pch") && lines2[i]) {
                    result2.chipset = Math.round(parseInt(lines2[i], 10) / 100) / 10;
                  }
                }
              }
            } catch (e) {
              util.noop();
            }
            const cmd = 'for mon in /sys/class/hwmon/hwmon*; do for label in "$mon"/temp*_label; do if [ -f $label ]; then value=${label%_*}_input; echo $(cat "$label")___$(cat "$value"); fi; done; done;';
            try {
              exec(cmd, function(error, stdout) {
                stdout = stdout.toString();
                const tdiePos = stdout.toLowerCase().indexOf("tdie");
                if (tdiePos !== -1) {
                  stdout = stdout.substring(tdiePos);
                }
                let lines = stdout.split("\n");
                let tctl = 0;
                lines.forEach((line) => {
                  const parts = line.split("___");
                  const label = parts[0];
                  const value = parts.length > 1 && parts[1] ? parts[1] : "0";
                  if (value && label && label.toLowerCase() === "tctl") {
                    tctl = result2.main = Math.round(parseInt(value, 10) / 100) / 10;
                  }
                  if (value && (label === void 0 || label && label.toLowerCase().startsWith("core"))) {
                    result2.cores.push(Math.round(parseInt(value, 10) / 100) / 10);
                  } else if (value && label && result2.main === null && (label.toLowerCase().indexOf("package") >= 0 || label.toLowerCase().indexOf("physical") >= 0 || label.toLowerCase() === "tccd1")) {
                    result2.main = Math.round(parseInt(value, 10) / 100) / 10;
                  }
                });
                if (tctl && result2.main === null) {
                  result2.main = tctl;
                }
                if (result2.cores.length > 0) {
                  if (result2.main === null) {
                    result2.main = Math.round(result2.cores.reduce((a, b) => a + b, 0) / result2.cores.length);
                  }
                  let maxtmp = Math.max.apply(Math, result2.cores);
                  result2.max = maxtmp > result2.main ? maxtmp : result2.main;
                }
                if (result2.main !== null) {
                  if (result2.max === null) {
                    result2.max = result2.main;
                  }
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                  return;
                }
                exec("sensors", function(error2, stdout2) {
                  if (!error2) {
                    let lines2 = stdout2.toString().split("\n");
                    let tdieTemp = null;
                    let newSectionStarts = true;
                    let section = "";
                    lines2.forEach(function(line) {
                      if (line.trim() === "") {
                        newSectionStarts = true;
                      } else if (newSectionStarts) {
                        if (line.trim().toLowerCase().startsWith("acpi")) {
                          section = "acpi";
                        }
                        if (line.trim().toLowerCase().startsWith("pch")) {
                          section = "pch";
                        }
                        if (line.trim().toLowerCase().startsWith("core")) {
                          section = "core";
                        }
                        newSectionStarts = false;
                      }
                      let regex = /[+-]([^°]*)/g;
                      let temps = line.match(regex);
                      let firstPart = line.split(":")[0].toUpperCase();
                      if (section === "acpi") {
                        if (firstPart.indexOf("TEMP") !== -1) {
                          result2.socket.push(parseFloat(temps));
                        }
                      } else if (section === "pch") {
                        if (firstPart.indexOf("TEMP") !== -1 && !result2.chipset) {
                          result2.chipset = parseFloat(temps);
                        }
                      }
                      if (firstPart.indexOf("PHYSICAL") !== -1 || firstPart.indexOf("PACKAGE") !== -1) {
                        result2.main = parseFloat(temps);
                      }
                      if (firstPart.indexOf("CORE ") !== -1) {
                        result2.cores.push(parseFloat(temps));
                      }
                      if (firstPart.indexOf("TDIE") !== -1 && tdieTemp === null) {
                        tdieTemp = parseFloat(temps);
                      }
                    });
                    if (result2.cores.length > 0) {
                      result2.main = Math.round(result2.cores.reduce((a, b) => a + b, 0) / result2.cores.length);
                      let maxtmp = Math.max.apply(Math, result2.cores);
                      result2.max = maxtmp > result2.main ? maxtmp : result2.main;
                    } else {
                      if (result2.main === null && tdieTemp !== null) {
                        result2.main = tdieTemp;
                        result2.max = tdieTemp;
                      }
                    }
                    if (result2.main !== null || result2.max !== null) {
                      if (callback) {
                        callback(result2);
                      }
                      resolve(result2);
                      return;
                    }
                  }
                  fs2.stat("/sys/class/thermal/thermal_zone0/temp", function(err) {
                    if (err === null) {
                      fs2.readFile("/sys/class/thermal/thermal_zone0/temp", function(error3, stdout3) {
                        if (!error3) {
                          let lines2 = stdout3.toString().split("\n");
                          if (lines2.length > 0) {
                            result2.main = parseFloat(lines2[0]) / 1e3;
                            result2.max = result2.main;
                          }
                        }
                        if (callback) {
                          callback(result2);
                        }
                        resolve(result2);
                      });
                    } else {
                      exec("/opt/vc/bin/vcgencmd measure_temp", function(error3, stdout3) {
                        if (!error3) {
                          let lines2 = stdout3.toString().split("\n");
                          if (lines2.length > 0 && lines2[0].indexOf("=")) {
                            result2.main = parseFloat(lines2[0].split("=")[1]);
                            result2.max = result2.main;
                          }
                        }
                        if (callback) {
                          callback(result2);
                        }
                        resolve(result2);
                      });
                    }
                  });
                });
              });
            } catch (er) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
          if (_freebsd || _openbsd || _netbsd) {
            exec("sysctl dev.cpu | grep temp", function(error, stdout) {
              if (!error) {
                let lines = stdout.toString().split("\n");
                let sum = 0;
                lines.forEach(function(line) {
                  const parts = line.split(":");
                  if (parts.length > 1) {
                    const temp = parseFloat(parts[1].replace(",", "."));
                    if (temp > result2.max) {
                      result2.max = temp;
                    }
                    sum = sum + temp;
                    result2.cores.push(temp);
                  }
                });
                if (result2.cores.length) {
                  result2.main = Math.round(sum / result2.cores.length * 100) / 100;
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_darwin) {
            let osxTemp = null;
            try {
              osxTemp = require("osx-temperature-sensor");
            } catch (er) {
              osxTemp = null;
            }
            if (osxTemp) {
              result2 = osxTemp.cpuTemperature();
              if (result2.main) {
                result2.main = Math.round(result2.main * 100) / 100;
              }
              if (result2.max) {
                result2.max = Math.round(result2.max * 100) / 100;
              }
              if (result2.cores && result2.cores.length) {
                for (let i = 0; i < result2.cores.length; i++) {
                  result2.cores[i] = Math.round(result2.cores[i] * 100) / 100;
                }
              }
            }
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
          if (_sunos) {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
          if (_windows) {
            try {
              util.powerShell('Get-CimInstance MSAcpi_ThermalZoneTemperature -Namespace "root/wmi" | Select CurrentTemperature').then((stdout, error) => {
                if (!error) {
                  let sum = 0;
                  let lines = stdout.split("\r\n").filter((line) => line.trim() !== "").filter((line, idx) => idx > 0);
                  lines.forEach(function(line) {
                    let value = (parseInt(line, 10) - 2732) / 10;
                    if (!isNaN(value)) {
                      sum = sum + value;
                      if (value > result2.max) {
                        result2.max = value;
                      }
                      result2.cores.push(value);
                    }
                  });
                  if (result2.cores.length) {
                    result2.main = sum / result2.cores.length;
                  }
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    }
    exports2.cpuTemperature = cpuTemperature;
    function cpuFlags(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = "";
          if (_windows) {
            try {
              exec('reg query "HKEY_LOCAL_MACHINE\\HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0" /v FeatureSet', util.execOptsWin, function(error, stdout) {
                if (!error) {
                  let flag_hex = stdout.split("0x").pop().trim();
                  let flag_bin_unpadded = parseInt(flag_hex, 16).toString(2);
                  let flag_bin = "0".repeat(32 - flag_bin_unpadded.length) + flag_bin_unpadded;
                  let all_flags = [
                    "fpu",
                    "vme",
                    "de",
                    "pse",
                    "tsc",
                    "msr",
                    "pae",
                    "mce",
                    "cx8",
                    "apic",
                    "",
                    "sep",
                    "mtrr",
                    "pge",
                    "mca",
                    "cmov",
                    "pat",
                    "pse-36",
                    "psn",
                    "clfsh",
                    "",
                    "ds",
                    "acpi",
                    "mmx",
                    "fxsr",
                    "sse",
                    "sse2",
                    "ss",
                    "htt",
                    "tm",
                    "ia64",
                    "pbe"
                  ];
                  for (let f = 0; f < all_flags.length; f++) {
                    if (flag_bin[f] === "1" && all_flags[f] !== "") {
                      result2 += " " + all_flags[f];
                    }
                  }
                  result2 = result2.trim().toLowerCase();
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
          if (_linux) {
            try {
              exec("export LC_ALL=C; lscpu; unset LC_ALL", function(error, stdout) {
                if (!error) {
                  let lines = stdout.toString().split("\n");
                  lines.forEach(function(line) {
                    if (line.split(":")[0].toUpperCase().indexOf("FLAGS") !== -1) {
                      result2 = line.split(":")[1].trim().toLowerCase();
                    }
                  });
                }
                if (!result2) {
                  fs2.readFile("/proc/cpuinfo", function(error2, stdout2) {
                    if (!error2) {
                      let lines = stdout2.toString().split("\n");
                      result2 = util.getValue(lines, "features", ":", true).toLowerCase();
                    }
                    if (callback) {
                      callback(result2);
                    }
                    resolve(result2);
                  });
                } else {
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                }
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
          if (_freebsd || _openbsd || _netbsd) {
            exec("export LC_ALL=C; dmidecode -t 4 2>/dev/null; unset LC_ALL", function(error, stdout) {
              let flags = [];
              if (!error) {
                let parts = stdout.toString().split("	Flags:");
                const lines = parts.length > 1 ? parts[1].split("	Version:")[0].split("\n") : [];
                lines.forEach(function(line) {
                  let flag = (line.indexOf("(") ? line.split("(")[0].toLowerCase() : "").trim().replace(/\t/g, "");
                  if (flag) {
                    flags.push(flag);
                  }
                });
              }
              result2 = flags.join(" ").trim().toLowerCase();
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_darwin) {
            exec("sysctl machdep.cpu.features", function(error, stdout) {
              if (!error) {
                let lines = stdout.toString().split("\n");
                if (lines.length > 0 && lines[0].indexOf("machdep.cpu.features:") !== -1) {
                  result2 = lines[0].split(":")[1].trim().toLowerCase();
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_sunos) {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
        });
      });
    }
    exports2.cpuFlags = cpuFlags;
    function cpuCache(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = {
            l1d: null,
            l1i: null,
            l2: null,
            l3: null
          };
          if (_linux) {
            try {
              exec("export LC_ALL=C; lscpu; unset LC_ALL", function(error, stdout) {
                if (!error) {
                  let lines = stdout.toString().split("\n");
                  lines.forEach(function(line) {
                    let parts = line.split(":");
                    if (parts[0].toUpperCase().indexOf("L1D CACHE") !== -1) {
                      result2.l1d = parseInt(parts[1].trim()) * (parts[1].indexOf("M") !== -1 ? 1024 * 1024 : parts[1].indexOf("K") !== -1 ? 1024 : 1);
                    }
                    if (parts[0].toUpperCase().indexOf("L1I CACHE") !== -1) {
                      result2.l1i = parseInt(parts[1].trim()) * (parts[1].indexOf("M") !== -1 ? 1024 * 1024 : parts[1].indexOf("K") !== -1 ? 1024 : 1);
                    }
                    if (parts[0].toUpperCase().indexOf("L2 CACHE") !== -1) {
                      result2.l2 = parseInt(parts[1].trim()) * (parts[1].indexOf("M") !== -1 ? 1024 * 1024 : parts[1].indexOf("K") !== -1 ? 1024 : 1);
                    }
                    if (parts[0].toUpperCase().indexOf("L3 CACHE") !== -1) {
                      result2.l3 = parseInt(parts[1].trim()) * (parts[1].indexOf("M") !== -1 ? 1024 * 1024 : parts[1].indexOf("K") !== -1 ? 1024 : 1);
                    }
                  });
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
          if (_freebsd || _openbsd || _netbsd) {
            exec("export LC_ALL=C; dmidecode -t 7 2>/dev/null; unset LC_ALL", function(error, stdout) {
              let cache = [];
              if (!error) {
                const data = stdout.toString();
                cache = data.split("Cache Information");
                cache.shift();
              }
              for (let i = 0; i < cache.length; i++) {
                const lines = cache[i].split("\n");
                let cacheType = util.getValue(lines, "Socket Designation").toLowerCase().replace(" ", "-").split("-");
                cacheType = cacheType.length ? cacheType[0] : "";
                const sizeParts = util.getValue(lines, "Installed Size").split(" ");
                let size = parseInt(sizeParts[0], 10);
                const unit = sizeParts.length > 1 ? sizeParts[1] : "kb";
                size = size * (unit === "kb" ? 1024 : unit === "mb" ? 1024 * 1024 : unit === "gb" ? 1024 * 1024 * 1024 : 1);
                if (cacheType) {
                  if (cacheType === "l1") {
                    result2.cache[cacheType + "d"] = size / 2;
                    result2.cache[cacheType + "i"] = size / 2;
                  } else {
                    result2.cache[cacheType] = size;
                  }
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_darwin) {
            exec("sysctl hw.l1icachesize hw.l1dcachesize hw.l2cachesize hw.l3cachesize", function(error, stdout) {
              if (!error) {
                let lines = stdout.toString().split("\n");
                lines.forEach(function(line) {
                  let parts = line.split(":");
                  if (parts[0].toLowerCase().indexOf("hw.l1icachesize") !== -1) {
                    result2.l1d = parseInt(parts[1].trim()) * (parts[1].indexOf("K") !== -1 ? 1024 : 1);
                  }
                  if (parts[0].toLowerCase().indexOf("hw.l1dcachesize") !== -1) {
                    result2.l1i = parseInt(parts[1].trim()) * (parts[1].indexOf("K") !== -1 ? 1024 : 1);
                  }
                  if (parts[0].toLowerCase().indexOf("hw.l2cachesize") !== -1) {
                    result2.l2 = parseInt(parts[1].trim()) * (parts[1].indexOf("K") !== -1 ? 1024 : 1);
                  }
                  if (parts[0].toLowerCase().indexOf("hw.l3cachesize") !== -1) {
                    result2.l3 = parseInt(parts[1].trim()) * (parts[1].indexOf("K") !== -1 ? 1024 : 1);
                  }
                });
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_sunos) {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
          if (_windows) {
            try {
              const workload = [];
              workload.push(util.powerShell("Get-CimInstance Win32_processor | select L2CacheSize, L3CacheSize | fl"));
              workload.push(util.powerShell("Get-CimInstance Win32_CacheMemory | select CacheType,InstalledSize,Level | fl"));
              Promise.all(
                workload
              ).then((data) => {
                result2 = parseWinCache(data[0], data[1]);
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    }
    function parseWinCache(linesProc, linesCache) {
      let result2 = {
        l1d: null,
        l1i: null,
        l2: null,
        l3: null
      };
      let lines = linesProc.split("\r\n");
      result2.l1d = 0;
      result2.l1i = 0;
      result2.l2 = util.getValue(lines, "l2cachesize", ":");
      result2.l3 = util.getValue(lines, "l3cachesize", ":");
      if (result2.l2) {
        result2.l2 = parseInt(result2.l2, 10) * 1024;
      } else {
        result2.l2 = 0;
      }
      if (result2.l3) {
        result2.l3 = parseInt(result2.l3, 10) * 1024;
      } else {
        result2.l3 = 0;
      }
      const parts = linesCache.split(/\n\s*\n/);
      let l1i = 0;
      let l1d = 0;
      let l2 = 0;
      parts.forEach(function(part) {
        const lines2 = part.split("\r\n");
        const cacheType = util.getValue(lines2, "CacheType");
        const level = util.getValue(lines2, "Level");
        const installedSize = util.getValue(lines2, "InstalledSize");
        if (level === "3" && cacheType === "3") {
          result2.l1i = result2.l1i + parseInt(installedSize, 10) * 1024;
        }
        if (level === "3" && cacheType === "4") {
          result2.l1d = result2.l1d + parseInt(installedSize, 10) * 1024;
        }
        if (level === "3" && cacheType === "5") {
          l1i = parseInt(installedSize, 10) / 2;
          l1d = parseInt(installedSize, 10) / 2;
        }
        if (level === "4" && cacheType === "5") {
          l2 = l2 + parseInt(installedSize, 10) * 1024;
        }
      });
      if (!result2.l1i && !result2.l1d) {
        result2.l1i = l1i;
        result2.l1d = l1d;
      }
      if (l2) {
        result2.l2 = l2;
      }
      return result2;
    }
    exports2.cpuCache = cpuCache;
    function getLoad() {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let loads = os.loadavg().map(function(x) {
            return x / util.cores();
          });
          let avgLoad = parseFloat(Math.max.apply(Math, loads).toFixed(2));
          let result2 = {};
          let now = Date.now() - _current_cpu.ms;
          if (now >= 200) {
            _current_cpu.ms = Date.now();
            const cpus = os.cpus().map(function(cpu2) {
              cpu2.times.steal = 0;
              cpu2.times.guest = 0;
              return cpu2;
            });
            let totalUser = 0;
            let totalSystem = 0;
            let totalNice = 0;
            let totalIrq = 0;
            let totalIdle = 0;
            let totalSteal = 0;
            let totalGuest = 0;
            let cores = [];
            _corecount = cpus && cpus.length ? cpus.length : 0;
            if (_linux) {
              try {
                const lines = execSync("cat /proc/stat 2>/dev/null | grep cpu", util.execOptsLinux).toString().split("\n");
                if (lines.length > 1) {
                  lines.shift();
                  if (lines.length === cpus.length) {
                    for (let i = 0; i < lines.length; i++) {
                      let parts = lines[i].split(" ");
                      if (parts.length >= 10) {
                        const steal = parseFloat(parts[8]) || 0;
                        const guest = parseFloat(parts[9]) || 0;
                        cpus[i].times.steal = steal;
                        cpus[i].times.guest = guest;
                      }
                    }
                  }
                }
              } catch (e) {
                util.noop();
              }
            }
            for (let i = 0; i < _corecount; i++) {
              const cpu2 = cpus[i].times;
              totalUser += cpu2.user;
              totalSystem += cpu2.sys;
              totalNice += cpu2.nice;
              totalIdle += cpu2.idle;
              totalIrq += cpu2.irq;
              totalSteal += cpu2.steal || 0;
              totalGuest += cpu2.guest || 0;
              let tmpTick = _cpus && _cpus[i] && _cpus[i].totalTick ? _cpus[i].totalTick : 0;
              let tmpLoad = _cpus && _cpus[i] && _cpus[i].totalLoad ? _cpus[i].totalLoad : 0;
              let tmpUser = _cpus && _cpus[i] && _cpus[i].user ? _cpus[i].user : 0;
              let tmpSystem = _cpus && _cpus[i] && _cpus[i].sys ? _cpus[i].sys : 0;
              let tmpNice = _cpus && _cpus[i] && _cpus[i].nice ? _cpus[i].nice : 0;
              let tmpIdle = _cpus && _cpus[i] && _cpus[i].idle ? _cpus[i].idle : 0;
              let tmpIrq = _cpus && _cpus[i] && _cpus[i].irq ? _cpus[i].irq : 0;
              let tmpSteal = _cpus && _cpus[i] && _cpus[i].steal ? _cpus[i].steal : 0;
              let tmpGuest = _cpus && _cpus[i] && _cpus[i].guest ? _cpus[i].guest : 0;
              _cpus[i] = cpu2;
              _cpus[i].totalTick = _cpus[i].user + _cpus[i].sys + _cpus[i].nice + _cpus[i].irq + _cpus[i].steal + _cpus[i].guest + _cpus[i].idle;
              _cpus[i].totalLoad = _cpus[i].user + _cpus[i].sys + _cpus[i].nice + _cpus[i].irq + _cpus[i].steal + _cpus[i].guest;
              _cpus[i].currentTick = _cpus[i].totalTick - tmpTick;
              _cpus[i].load = _cpus[i].totalLoad - tmpLoad;
              _cpus[i].loadUser = _cpus[i].user - tmpUser;
              _cpus[i].loadSystem = _cpus[i].sys - tmpSystem;
              _cpus[i].loadNice = _cpus[i].nice - tmpNice;
              _cpus[i].loadIdle = _cpus[i].idle - tmpIdle;
              _cpus[i].loadIrq = _cpus[i].irq - tmpIrq;
              _cpus[i].loadSteal = _cpus[i].steal - tmpSteal;
              _cpus[i].loadGuest = _cpus[i].guest - tmpGuest;
              cores[i] = {};
              cores[i].load = _cpus[i].load / _cpus[i].currentTick * 100;
              cores[i].loadUser = _cpus[i].loadUser / _cpus[i].currentTick * 100;
              cores[i].loadSystem = _cpus[i].loadSystem / _cpus[i].currentTick * 100;
              cores[i].loadNice = _cpus[i].loadNice / _cpus[i].currentTick * 100;
              cores[i].loadIdle = _cpus[i].loadIdle / _cpus[i].currentTick * 100;
              cores[i].loadIrq = _cpus[i].loadIrq / _cpus[i].currentTick * 100;
              cores[i].loadSteal = _cpus[i].loadSteal / _cpus[i].currentTick * 100;
              cores[i].loadGuest = _cpus[i].loadGuest / _cpus[i].currentTick * 100;
              cores[i].rawLoad = _cpus[i].load;
              cores[i].rawLoadUser = _cpus[i].loadUser;
              cores[i].rawLoadSystem = _cpus[i].loadSystem;
              cores[i].rawLoadNice = _cpus[i].loadNice;
              cores[i].rawLoadIdle = _cpus[i].loadIdle;
              cores[i].rawLoadIrq = _cpus[i].loadIrq;
              cores[i].rawLoadSteal = _cpus[i].loadSteal;
              cores[i].rawLoadGuest = _cpus[i].loadGuest;
            }
            let totalTick = totalUser + totalSystem + totalNice + totalIrq + totalSteal + totalGuest + totalIdle;
            let totalLoad = totalUser + totalSystem + totalNice + totalIrq + totalSteal + totalGuest;
            let currentTick = totalTick - _current_cpu.tick;
            result2 = {
              avgLoad,
              currentLoad: (totalLoad - _current_cpu.load) / currentTick * 100,
              currentLoadUser: (totalUser - _current_cpu.user) / currentTick * 100,
              currentLoadSystem: (totalSystem - _current_cpu.system) / currentTick * 100,
              currentLoadNice: (totalNice - _current_cpu.nice) / currentTick * 100,
              currentLoadIdle: (totalIdle - _current_cpu.idle) / currentTick * 100,
              currentLoadIrq: (totalIrq - _current_cpu.irq) / currentTick * 100,
              currentLoadSteal: (totalSteal - _current_cpu.steal) / currentTick * 100,
              currentLoadGuest: (totalGuest - _current_cpu.guest) / currentTick * 100,
              rawCurrentLoad: totalLoad - _current_cpu.load,
              rawCurrentLoadUser: totalUser - _current_cpu.user,
              rawCurrentLoadSystem: totalSystem - _current_cpu.system,
              rawCurrentLoadNice: totalNice - _current_cpu.nice,
              rawCurrentLoadIdle: totalIdle - _current_cpu.idle,
              rawCurrentLoadIrq: totalIrq - _current_cpu.irq,
              rawCurrentLoadSteal: totalSteal - _current_cpu.steal,
              rawCurrentLoadGuest: totalGuest - _current_cpu.guest,
              cpus: cores
            };
            _current_cpu = {
              user: totalUser,
              nice: totalNice,
              system: totalSystem,
              idle: totalIdle,
              irq: totalIrq,
              steal: totalSteal,
              guest: totalGuest,
              tick: totalTick,
              load: totalLoad,
              ms: _current_cpu.ms,
              currentLoad: result2.currentLoad,
              currentLoadUser: result2.currentLoadUser,
              currentLoadSystem: result2.currentLoadSystem,
              currentLoadNice: result2.currentLoadNice,
              currentLoadIdle: result2.currentLoadIdle,
              currentLoadIrq: result2.currentLoadIrq,
              currentLoadSteal: result2.currentLoadSteal,
              currentLoadGuest: result2.currentLoadGuest,
              rawCurrentLoad: result2.rawCurrentLoad,
              rawCurrentLoadUser: result2.rawCurrentLoadUser,
              rawCurrentLoadSystem: result2.rawCurrentLoadSystem,
              rawCurrentLoadNice: result2.rawCurrentLoadNice,
              rawCurrentLoadIdle: result2.rawCurrentLoadIdle,
              rawCurrentLoadIrq: result2.rawCurrentLoadIrq,
              rawCurrentLoadSteal: result2.rawCurrentLoadSteal,
              rawCurrentLoadGuest: result2.rawCurrentLoadGuest
            };
          } else {
            let cores = [];
            for (let i = 0; i < _corecount; i++) {
              cores[i] = {};
              cores[i].load = _cpus[i].load / _cpus[i].currentTick * 100;
              cores[i].loadUser = _cpus[i].loadUser / _cpus[i].currentTick * 100;
              cores[i].loadSystem = _cpus[i].loadSystem / _cpus[i].currentTick * 100;
              cores[i].loadNice = _cpus[i].loadNice / _cpus[i].currentTick * 100;
              cores[i].loadIdle = _cpus[i].loadIdle / _cpus[i].currentTick * 100;
              cores[i].loadIrq = _cpus[i].loadIrq / _cpus[i].currentTick * 100;
              cores[i].rawLoad = _cpus[i].load;
              cores[i].rawLoadUser = _cpus[i].loadUser;
              cores[i].rawLoadSystem = _cpus[i].loadSystem;
              cores[i].rawLoadNice = _cpus[i].loadNice;
              cores[i].rawLoadIdle = _cpus[i].loadIdle;
              cores[i].rawLoadIrq = _cpus[i].loadIrq;
              cores[i].rawLoadSteal = _cpus[i].loadSteal;
              cores[i].rawLoadGuest = _cpus[i].loadGuest;
            }
            result2 = {
              avgLoad,
              currentLoad: _current_cpu.currentLoad,
              currentLoadUser: _current_cpu.currentLoadUser,
              currentLoadSystem: _current_cpu.currentLoadSystem,
              currentLoadNice: _current_cpu.currentLoadNice,
              currentLoadIdle: _current_cpu.currentLoadIdle,
              currentLoadIrq: _current_cpu.currentLoadIrq,
              currentLoadSteal: _current_cpu.currentLoadSteal,
              currentLoadGuest: _current_cpu.currentLoadGuest,
              rawCurrentLoad: _current_cpu.rawCurrentLoad,
              rawCurrentLoadUser: _current_cpu.rawCurrentLoadUser,
              rawCurrentLoadSystem: _current_cpu.rawCurrentLoadSystem,
              rawCurrentLoadNice: _current_cpu.rawCurrentLoadNice,
              rawCurrentLoadIdle: _current_cpu.rawCurrentLoadIdle,
              rawCurrentLoadIrq: _current_cpu.rawCurrentLoadIrq,
              rawCurrentLoadSteal: _current_cpu.rawCurrentLoadSteal,
              rawCurrentLoadGuest: _current_cpu.rawCurrentLoadGuest,
              cpus: cores
            };
          }
          resolve(result2);
        });
      });
    }
    function currentLoad(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          getLoad().then((result2) => {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          });
        });
      });
    }
    exports2.currentLoad = currentLoad;
    function getFullLoad() {
      return new Promise((resolve) => {
        process.nextTick(() => {
          const cpus = os.cpus();
          let totalUser = 0;
          let totalSystem = 0;
          let totalNice = 0;
          let totalIrq = 0;
          let totalIdle = 0;
          let result2 = 0;
          if (cpus && cpus.length) {
            for (let i = 0, len = cpus.length; i < len; i++) {
              const cpu2 = cpus[i].times;
              totalUser += cpu2.user;
              totalSystem += cpu2.sys;
              totalNice += cpu2.nice;
              totalIrq += cpu2.irq;
              totalIdle += cpu2.idle;
            }
            let totalTicks = totalIdle + totalIrq + totalNice + totalSystem + totalUser;
            result2 = (totalTicks - totalIdle) / totalTicks * 100;
          }
          resolve(result2);
        });
      });
    }
    function fullLoad(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          getFullLoad().then((result2) => {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          });
        });
      });
    }
    exports2.fullLoad = fullLoad;
  }
});

// node_modules/systeminformation/lib/memory.js
var require_memory = __commonJS({
  "node_modules/systeminformation/lib/memory.js"(exports2) {
    "use strict";
    var os = require("os");
    var exec = require("child_process").exec;
    var execSync = require("child_process").execSync;
    var util = require_util();
    var fs2 = require("fs");
    var _platform = process.platform;
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _sunos = _platform === "sunos";
    var RAM_manufacturers = {
      "00CE": "Samsung Electronics Inc",
      "014F": "Transcend Information Inc.",
      "017A": "Apacer Technology Inc.",
      "0198": "HyperX",
      "029E": "Corsair",
      "02FE": "Elpida",
      "04CB": "A-DATA",
      "04CD": "G.Skill International Enterprise",
      "059B": "Crucial",
      "1315": "Crucial",
      "2C00": "Micron Technology Inc.",
      "5105": "Qimonda AG i. In.",
      "802C": "Micron Technology Inc.",
      "80AD": "Hynix Semiconductor Inc.",
      "80CE": "Samsung Electronics Inc.",
      "8551": "Qimonda AG i. In.",
      "859B": "Crucial",
      "AD00": "Hynix Semiconductor Inc.",
      "CE00": "Samsung Electronics Inc.",
      "SAMSUNG": "Samsung Electronics Inc.",
      "HYNIX": "Hynix Semiconductor Inc.",
      "G-SKILL": "G-Skill International Enterprise",
      "G.SKILL": "G-Skill International Enterprise",
      "TRANSCEND": "Transcend Information",
      "APACER": "Apacer Technology Inc",
      "MICRON": "Micron Technology Inc.",
      "QIMONDA": "Qimonda AG i. In."
    };
    function mem(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = {
            total: os.totalmem(),
            free: os.freemem(),
            used: os.totalmem() - os.freemem(),
            active: os.totalmem() - os.freemem(),
            // temporarily (fallback)
            available: os.freemem(),
            // temporarily (fallback)
            buffers: 0,
            cached: 0,
            slab: 0,
            buffcache: 0,
            reclaimable: 0,
            swaptotal: 0,
            swapused: 0,
            swapfree: 0,
            writeback: null,
            dirty: null
          };
          if (_linux) {
            try {
              fs2.readFile("/proc/meminfo", function(error, stdout) {
                if (!error) {
                  const lines = stdout.toString().split("\n");
                  result2.total = parseInt(util.getValue(lines, "memtotal"), 10);
                  result2.total = result2.total ? result2.total * 1024 : os.totalmem();
                  result2.free = parseInt(util.getValue(lines, "memfree"), 10);
                  result2.free = result2.free ? result2.free * 1024 : os.freemem();
                  result2.used = result2.total - result2.free;
                  result2.buffers = parseInt(util.getValue(lines, "buffers"), 10);
                  result2.buffers = result2.buffers ? result2.buffers * 1024 : 0;
                  result2.cached = parseInt(util.getValue(lines, "cached"), 10);
                  result2.cached = result2.cached ? result2.cached * 1024 : 0;
                  result2.slab = parseInt(util.getValue(lines, "slab"), 10);
                  result2.slab = result2.slab ? result2.slab * 1024 : 0;
                  result2.buffcache = result2.buffers + result2.cached + result2.slab;
                  let available = parseInt(util.getValue(lines, "memavailable"), 10);
                  result2.available = available ? available * 1024 : result2.free + result2.buffcache;
                  result2.active = result2.total - result2.available;
                  result2.swaptotal = parseInt(util.getValue(lines, "swaptotal"), 10);
                  result2.swaptotal = result2.swaptotal ? result2.swaptotal * 1024 : 0;
                  result2.swapfree = parseInt(util.getValue(lines, "swapfree"), 10);
                  result2.swapfree = result2.swapfree ? result2.swapfree * 1024 : 0;
                  result2.swapused = result2.swaptotal - result2.swapfree;
                  result2.writeback = parseInt(util.getValue(lines, "writeback"), 10);
                  result2.writeback = result2.writeback ? result2.writeback * 1024 : 0;
                  result2.dirty = parseInt(util.getValue(lines, "dirty"), 10);
                  result2.dirty = result2.dirty ? result2.dirty * 1024 : 0;
                  result2.reclaimable = parseInt(util.getValue(lines, "sreclaimable"), 10);
                  result2.reclaimable = result2.reclaimable ? result2.reclaimable * 1024 : 0;
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
          if (_freebsd || _openbsd || _netbsd) {
            try {
              exec("/sbin/sysctl hw.realmem hw.physmem vm.stats.vm.v_page_count vm.stats.vm.v_wire_count vm.stats.vm.v_active_count vm.stats.vm.v_inactive_count vm.stats.vm.v_cache_count vm.stats.vm.v_free_count vm.stats.vm.v_page_size", function(error, stdout) {
                if (!error) {
                  let lines = stdout.toString().split("\n");
                  const pagesize = parseInt(util.getValue(lines, "vm.stats.vm.v_page_size"), 10);
                  const inactive = parseInt(util.getValue(lines, "vm.stats.vm.v_inactive_count"), 10) * pagesize;
                  const cache = parseInt(util.getValue(lines, "vm.stats.vm.v_cache_count"), 10) * pagesize;
                  result2.total = parseInt(util.getValue(lines, "hw.realmem"), 10);
                  if (isNaN(result2.total)) {
                    result2.total = parseInt(util.getValue(lines, "hw.physmem"), 10);
                  }
                  result2.free = parseInt(util.getValue(lines, "vm.stats.vm.v_free_count"), 10) * pagesize;
                  result2.buffcache = inactive + cache;
                  result2.available = result2.buffcache + result2.free;
                  result2.active = result2.total - result2.free - result2.buffcache;
                  result2.swaptotal = 0;
                  result2.swapfree = 0;
                  result2.swapused = 0;
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
          if (_sunos) {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
          if (_darwin) {
            let pageSize = 4096;
            try {
              let sysPpageSize = util.toInt(execSync("sysctl -n vm.pagesize").toString());
              pageSize = sysPpageSize || pageSize;
            } catch (e) {
              util.noop();
            }
            try {
              exec('vm_stat 2>/dev/null | egrep "Pages active|Pages inactive"', function(error, stdout) {
                if (!error) {
                  let lines = stdout.toString().split("\n");
                  result2.active = (parseInt(util.getValue(lines, "Pages active"), 10) || 0) * pageSize;
                  result2.reclaimable = (parseInt(util.getValue(lines, "Pages inactive"), 10) || 0) * pageSize;
                  result2.buffcache = result2.used - result2.active;
                  result2.available = result2.free + result2.buffcache;
                }
                exec("sysctl -n vm.swapusage 2>/dev/null", function(error2, stdout2) {
                  if (!error2) {
                    let lines = stdout2.toString().split("\n");
                    if (lines.length > 0) {
                      let firstline = lines[0].replace(/,/g, ".").replace(/M/g, "");
                      let lineArray = firstline.trim().split("  ");
                      lineArray.forEach((line) => {
                        if (line.toLowerCase().indexOf("total") !== -1) {
                          result2.swaptotal = parseFloat(line.split("=")[1].trim()) * 1024 * 1024;
                        }
                        if (line.toLowerCase().indexOf("used") !== -1) {
                          result2.swapused = parseFloat(line.split("=")[1].trim()) * 1024 * 1024;
                        }
                        if (line.toLowerCase().indexOf("free") !== -1) {
                          result2.swapfree = parseFloat(line.split("=")[1].trim()) * 1024 * 1024;
                        }
                      });
                    }
                  }
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                });
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
          if (_windows) {
            let swaptotal = 0;
            let swapused = 0;
            try {
              util.powerShell("Get-CimInstance Win32_PageFileUsage | Select AllocatedBaseSize, CurrentUsage").then((stdout, error) => {
                if (!error) {
                  let lines = stdout.split("\r\n").filter((line) => line.trim() !== "").filter((line, idx) => idx > 0);
                  lines.forEach(function(line) {
                    if (line !== "") {
                      line = line.trim().split(/\s\s+/);
                      swaptotal = swaptotal + (parseInt(line[0], 10) || 0);
                      swapused = swapused + (parseInt(line[1], 10) || 0);
                    }
                  });
                }
                result2.swaptotal = swaptotal * 1024 * 1024;
                result2.swapused = swapused * 1024 * 1024;
                result2.swapfree = result2.swaptotal - result2.swapused;
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    }
    exports2.mem = mem;
    function memLayout(callback) {
      function getManufacturer(manId) {
        const manIdSearch = manId.replace("0x", "").toUpperCase();
        if (manIdSearch.length >= 4 && {}.hasOwnProperty.call(RAM_manufacturers, manIdSearch)) {
          return RAM_manufacturers[manIdSearch];
        }
        return manId;
      }
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = [];
          if (_linux || _freebsd || _openbsd || _netbsd) {
            exec('export LC_ALL=C; dmidecode -t memory 2>/dev/null | grep -iE "Size:|Type|Speed|Manufacturer|Form Factor|Locator|Memory Device|Serial Number|Voltage|Part Number"; unset LC_ALL', function(error, stdout) {
              if (!error) {
                let devices = stdout.toString().split("Memory Device");
                devices.shift();
                devices.forEach(function(device) {
                  let lines = device.split("\n");
                  const sizeString = util.getValue(lines, "Size");
                  const size = sizeString.indexOf("GB") >= 0 ? parseInt(sizeString, 10) * 1024 * 1024 * 1024 : parseInt(sizeString, 10) * 1024 * 1024;
                  let bank = util.getValue(lines, "Bank Locator");
                  if (bank.toLowerCase().indexOf("bad") >= 0) {
                    bank = "";
                  }
                  if (parseInt(util.getValue(lines, "Size"), 10) > 0) {
                    const totalWidth = util.toInt(util.getValue(lines, "Total Width"));
                    const dataWidth = util.toInt(util.getValue(lines, "Data Width"));
                    result2.push({
                      size,
                      bank,
                      type: util.getValue(lines, "Type:"),
                      ecc: dataWidth && totalWidth ? totalWidth > dataWidth : false,
                      clockSpeed: util.getValue(lines, "Configured Clock Speed:") ? parseInt(util.getValue(lines, "Configured Clock Speed:"), 10) : util.getValue(lines, "Speed:") ? parseInt(util.getValue(lines, "Speed:"), 10) : null,
                      formFactor: util.getValue(lines, "Form Factor:"),
                      manufacturer: getManufacturer(util.getValue(lines, "Manufacturer:")),
                      partNum: util.getValue(lines, "Part Number:"),
                      serialNum: util.getValue(lines, "Serial Number:"),
                      voltageConfigured: parseFloat(util.getValue(lines, "Configured Voltage:")) || null,
                      voltageMin: parseFloat(util.getValue(lines, "Minimum Voltage:")) || null,
                      voltageMax: parseFloat(util.getValue(lines, "Maximum Voltage:")) || null
                    });
                  } else {
                    result2.push({
                      size: 0,
                      bank,
                      type: "Empty",
                      ecc: null,
                      clockSpeed: 0,
                      formFactor: util.getValue(lines, "Form Factor:"),
                      partNum: "",
                      serialNum: "",
                      voltageConfigured: null,
                      voltageMin: null,
                      voltageMax: null
                    });
                  }
                });
              }
              if (!result2.length) {
                result2.push({
                  size: os.totalmem(),
                  bank: "",
                  type: "",
                  ecc: null,
                  clockSpeed: 0,
                  formFactor: "",
                  partNum: "",
                  serialNum: "",
                  voltageConfigured: null,
                  voltageMin: null,
                  voltageMax: null
                });
                try {
                  let stdout2 = execSync("cat /proc/cpuinfo 2>/dev/null", util.execOptsLinux);
                  let lines = stdout2.toString().split("\n");
                  let version = util.getValue(lines, "revision", ":", true).toLowerCase();
                  if (util.isRaspberry(lines)) {
                    const clockSpeed = {
                      "0": 400,
                      "1": 450,
                      "2": 450,
                      "3": 3200,
                      "4": 4267
                    };
                    result2[0].type = "LPDDR2";
                    result2[0].type = version && version[2] && version[2] === "3" ? "LPDDR4" : result2[0].type;
                    result2[0].type = version && version[2] && version[2] === "4" ? "LPDDR4X" : result2[0].type;
                    result2[0].ecc = false;
                    result2[0].clockSpeed = version && version[2] && clockSpeed[version[2]] || 400;
                    result2[0].clockSpeed = version && version[4] && version[4] === "d" ? 500 : result2[0].clockSpeed;
                    result2[0].formFactor = "SoC";
                    stdout2 = execSync("vcgencmd get_config sdram_freq 2>/dev/null", util.execOptsLinux);
                    lines = stdout2.toString().split("\n");
                    let freq = parseInt(util.getValue(lines, "sdram_freq", "=", true), 10) || 0;
                    if (freq) {
                      result2[0].clockSpeed = freq;
                    }
                    stdout2 = execSync("vcgencmd measure_volts sdram_p 2>/dev/null", util.execOptsLinux);
                    lines = stdout2.toString().split("\n");
                    let voltage = parseFloat(util.getValue(lines, "volt", "=", true)) || 0;
                    if (voltage) {
                      result2[0].voltageConfigured = voltage;
                      result2[0].voltageMin = voltage;
                      result2[0].voltageMax = voltage;
                    }
                  }
                } catch (e) {
                  util.noop();
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_darwin) {
            exec("system_profiler SPMemoryDataType", function(error, stdout) {
              if (!error) {
                const allLines = stdout.toString().split("\n");
                const eccStatus = util.getValue(allLines, "ecc", ":", true).toLowerCase();
                let devices = stdout.toString().split("        BANK ");
                let hasBank = true;
                if (devices.length === 1) {
                  devices = stdout.toString().split("        DIMM");
                  hasBank = false;
                }
                devices.shift();
                devices.forEach(function(device) {
                  let lines = device.split("\n");
                  const bank = (hasBank ? "BANK " : "DIMM") + lines[0].trim().split("/")[0];
                  const size = parseInt(util.getValue(lines, "          Size"));
                  if (size) {
                    result2.push({
                      size: size * 1024 * 1024 * 1024,
                      bank,
                      type: util.getValue(lines, "          Type:"),
                      ecc: eccStatus ? eccStatus === "enabled" : null,
                      clockSpeed: parseInt(util.getValue(lines, "          Speed:"), 10),
                      formFactor: "",
                      manufacturer: getManufacturer(util.getValue(lines, "          Manufacturer:")),
                      partNum: util.getValue(lines, "          Part Number:"),
                      serialNum: util.getValue(lines, "          Serial Number:"),
                      voltageConfigured: null,
                      voltageMin: null,
                      voltageMax: null
                    });
                  } else {
                    result2.push({
                      size: 0,
                      bank,
                      type: "Empty",
                      ecc: null,
                      clockSpeed: 0,
                      formFactor: "",
                      manufacturer: "",
                      partNum: "",
                      serialNum: "",
                      voltageConfigured: null,
                      voltageMin: null,
                      voltageMax: null
                    });
                  }
                });
              }
              if (!result2.length) {
                const lines = stdout.toString().split("\n");
                const size = parseInt(util.getValue(lines, "      Memory:"));
                const type = util.getValue(lines, "      Type:");
                const manufacturerId = util.getValue(lines, "      Manufacturer:");
                if (size && type) {
                  result2.push({
                    size: size * 1024 * 1024 * 1024,
                    bank: "0",
                    type,
                    ecc: false,
                    clockSpeed: null,
                    formFactor: "SOC",
                    manufacturer: getManufacturer(manufacturerId),
                    partNum: "",
                    serialNum: "",
                    voltageConfigured: null,
                    voltageMin: null,
                    voltageMax: null
                  });
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_sunos) {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
          if (_windows) {
            const memoryTypes = "Unknown|Other|DRAM|Synchronous DRAM|Cache DRAM|EDO|EDRAM|VRAM|SRAM|RAM|ROM|FLASH|EEPROM|FEPROM|EPROM|CDRAM|3DRAM|SDRAM|SGRAM|RDRAM|DDR|DDR2|DDR2 FB-DIMM|Reserved|DDR3|FBD2|DDR4|LPDDR|LPDDR2|LPDDR3|LPDDR4|Logical non-volatile device|HBM|HBM2|DDR5|LPDDR5".split("|");
            const FormFactors = "Unknown|Other|SIP|DIP|ZIP|SOJ|Proprietary|SIMM|DIMM|TSOP|PGA|RIMM|SODIMM|SRIMM|SMD|SSMP|QFP|TQFP|SOIC|LCC|PLCC|BGA|FPBGA|LGA".split("|");
            try {
              util.powerShell("Get-CimInstance Win32_PhysicalMemory | select DataWidth,TotalWidth,Capacity,BankLabel,MemoryType,SMBIOSMemoryType,ConfiguredClockSpeed,Speed,FormFactor,Manufacturer,PartNumber,SerialNumber,ConfiguredVoltage,MinVoltage,MaxVoltage,Tag | fl").then((stdout, error) => {
                if (!error) {
                  let devices = stdout.toString().split(/\n\s*\n/);
                  devices.shift();
                  devices.forEach(function(device) {
                    let lines = device.split("\r\n");
                    const dataWidth = util.toInt(util.getValue(lines, "DataWidth", ":"));
                    const totalWidth = util.toInt(util.getValue(lines, "TotalWidth", ":"));
                    const size = parseInt(util.getValue(lines, "Capacity", ":"), 10) || 0;
                    const tag = util.getValue(lines, "Tag", ":");
                    const tagInt = util.splitByNumber(tag);
                    if (size) {
                      result2.push({
                        size,
                        bank: util.getValue(lines, "BankLabel", ":") + (tagInt[1] ? "/" + tagInt[1] : ""),
                        // BankLabel
                        type: memoryTypes[parseInt(util.getValue(lines, "MemoryType", ":"), 10) || parseInt(util.getValue(lines, "SMBIOSMemoryType", ":"), 10)],
                        ecc: dataWidth && totalWidth ? totalWidth > dataWidth : false,
                        clockSpeed: parseInt(util.getValue(lines, "ConfiguredClockSpeed", ":"), 10) || parseInt(util.getValue(lines, "Speed", ":"), 10) || 0,
                        formFactor: FormFactors[parseInt(util.getValue(lines, "FormFactor", ":"), 10) || 0],
                        manufacturer: getManufacturer(util.getValue(lines, "Manufacturer", ":")),
                        partNum: util.getValue(lines, "PartNumber", ":"),
                        serialNum: util.getValue(lines, "SerialNumber", ":"),
                        voltageConfigured: (parseInt(util.getValue(lines, "ConfiguredVoltage", ":"), 10) || 0) / 1e3,
                        voltageMin: (parseInt(util.getValue(lines, "MinVoltage", ":"), 10) || 0) / 1e3,
                        voltageMax: (parseInt(util.getValue(lines, "MaxVoltage", ":"), 10) || 0) / 1e3
                      });
                    }
                  });
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    }
    exports2.memLayout = memLayout;
  }
});

// node_modules/systeminformation/lib/battery.js
var require_battery = __commonJS({
  "node_modules/systeminformation/lib/battery.js"(exports2, module2) {
    "use strict";
    var exec = require("child_process").exec;
    var fs2 = require("fs");
    var util = require_util();
    var _platform = process.platform;
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _sunos = _platform === "sunos";
    function parseWinBatteryPart(lines, designedCapacity, fullChargeCapacity) {
      const result2 = {};
      let status = util.getValue(lines, "BatteryStatus", ":").trim();
      if (status >= 0) {
        const statusValue = status ? parseInt(status) : 0;
        result2.status = statusValue;
        result2.hasBattery = true;
        result2.maxCapacity = fullChargeCapacity || parseInt(util.getValue(lines, "DesignCapacity", ":") || 0);
        result2.designedCapacity = parseInt(util.getValue(lines, "DesignCapacity", ":") || designedCapacity);
        result2.voltage = parseInt(util.getValue(lines, "DesignVoltage", ":") || 0) / 1e3;
        result2.capacityUnit = "mWh";
        result2.percent = parseInt(util.getValue(lines, "EstimatedChargeRemaining", ":") || 0);
        result2.currentCapacity = parseInt(result2.maxCapacity * result2.percent / 100);
        result2.isCharging = statusValue >= 6 && statusValue <= 9 || statusValue === 11 || statusValue !== 3 && statusValue !== 1 && result2.percent < 100;
        result2.acConnected = result2.isCharging || statusValue === 2;
        result2.model = util.getValue(lines, "DeviceID", ":");
      } else {
        result2.status = -1;
      }
      return result2;
    }
    module2.exports = function(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = {
            hasBattery: false,
            cycleCount: 0,
            isCharging: false,
            designedCapacity: 0,
            maxCapacity: 0,
            currentCapacity: 0,
            voltage: 0,
            capacityUnit: "",
            percent: 0,
            timeRemaining: null,
            acConnected: true,
            type: "",
            model: "",
            manufacturer: "",
            serial: ""
          };
          if (_linux) {
            let battery_path = "";
            if (fs2.existsSync("/sys/class/power_supply/BAT1/uevent")) {
              battery_path = "/sys/class/power_supply/BAT1/";
            } else if (fs2.existsSync("/sys/class/power_supply/BAT0/uevent")) {
              battery_path = "/sys/class/power_supply/BAT0/";
            }
            let acConnected = false;
            let acPath = "";
            if (fs2.existsSync("/sys/class/power_supply/AC/online")) {
              acPath = "/sys/class/power_supply/AC/online";
            } else if (fs2.existsSync("/sys/class/power_supply/AC0/online")) {
              acPath = "/sys/class/power_supply/AC0/online";
            }
            if (acPath) {
              const file = fs2.readFileSync(acPath);
              acConnected = file.toString().trim() === "1";
            }
            if (battery_path) {
              fs2.readFile(battery_path + "uevent", function(error, stdout) {
                if (!error) {
                  let lines = stdout.toString().split("\n");
                  result2.isCharging = util.getValue(lines, "POWER_SUPPLY_STATUS", "=").toLowerCase() === "charging";
                  result2.acConnected = acConnected || result2.isCharging;
                  result2.voltage = parseInt("0" + util.getValue(lines, "POWER_SUPPLY_VOLTAGE_NOW", "="), 10) / 1e6;
                  result2.capacityUnit = result2.voltage ? "mWh" : "mAh";
                  result2.cycleCount = parseInt("0" + util.getValue(lines, "POWER_SUPPLY_CYCLE_COUNT", "="), 10);
                  result2.maxCapacity = Math.round(parseInt("0" + util.getValue(lines, "POWER_SUPPLY_CHARGE_FULL", "=", true, true), 10) / 1e3 * (result2.voltage || 1));
                  const desingedMinVoltage = parseInt("0" + util.getValue(lines, "POWER_SUPPLY_VOLTAGE_MIN_DESIGN", "="), 10) / 1e6;
                  result2.designedCapacity = Math.round(parseInt("0" + util.getValue(lines, "POWER_SUPPLY_CHARGE_FULL_DESIGN", "=", true, true), 10) / 1e3 * (desingedMinVoltage || result2.voltage || 1));
                  result2.currentCapacity = Math.round(parseInt("0" + util.getValue(lines, "POWER_SUPPLY_CHARGE_NOW", "="), 10) / 1e3 * (result2.voltage || 1));
                  if (!result2.maxCapacity) {
                    result2.maxCapacity = parseInt("0" + util.getValue(lines, "POWER_SUPPLY_ENERGY_FULL", "=", true, true), 10) / 1e3;
                    result2.designedCapacity = parseInt("0" + util.getValue(lines, "POWER_SUPPLY_ENERGY_FULL_DESIGN", "=", true, true), 10) / 1e3 | result2.maxCapacity;
                    result2.currentCapacity = parseInt("0" + util.getValue(lines, "POWER_SUPPLY_ENERGY_NOW", "="), 10) / 1e3;
                  }
                  const percent = util.getValue(lines, "POWER_SUPPLY_CAPACITY", "=");
                  const energy = parseInt("0" + util.getValue(lines, "POWER_SUPPLY_ENERGY_NOW", "="), 10);
                  const power = parseInt("0" + util.getValue(lines, "POWER_SUPPLY_POWER_NOW", "="), 10);
                  const current = parseInt("0" + util.getValue(lines, "POWER_SUPPLY_CURRENT_NOW", "="), 10);
                  const charge = parseInt("0" + util.getValue(lines, "POWER_SUPPLY_CHARGE_NOW", "="), 10);
                  result2.percent = parseInt("0" + percent, 10);
                  if (result2.maxCapacity && result2.currentCapacity) {
                    result2.hasBattery = true;
                    if (!percent) {
                      result2.percent = 100 * result2.currentCapacity / result2.maxCapacity;
                    }
                  }
                  if (result2.isCharging) {
                    result2.hasBattery = true;
                  }
                  if (energy && power) {
                    result2.timeRemaining = Math.floor(energy / power * 60);
                  } else if (current && charge) {
                    result2.timeRemaining = Math.floor(charge / current * 60);
                  } else if (current && result2.currentCapacity) {
                    result2.timeRemaining = Math.floor(result2.currentCapacity / current * 60);
                  }
                  result2.type = util.getValue(lines, "POWER_SUPPLY_TECHNOLOGY", "=");
                  result2.model = util.getValue(lines, "POWER_SUPPLY_MODEL_NAME", "=");
                  result2.manufacturer = util.getValue(lines, "POWER_SUPPLY_MANUFACTURER", "=");
                  result2.serial = util.getValue(lines, "POWER_SUPPLY_SERIAL_NUMBER", "=");
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                } else {
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                }
              });
            } else {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
          if (_freebsd || _openbsd || _netbsd) {
            exec("sysctl -i hw.acpi.battery hw.acpi.acline", function(error, stdout) {
              let lines = stdout.toString().split("\n");
              const batteries = parseInt("0" + util.getValue(lines, "hw.acpi.battery.units"), 10);
              const percent = parseInt("0" + util.getValue(lines, "hw.acpi.battery.life"), 10);
              result2.hasBattery = batteries > 0;
              result2.cycleCount = null;
              result2.isCharging = util.getValue(lines, "hw.acpi.acline") !== "1";
              result2.acConnected = result2.isCharging;
              result2.maxCapacity = null;
              result2.currentCapacity = null;
              result2.capacityUnit = "unknown";
              result2.percent = batteries ? percent : null;
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_darwin) {
            exec('ioreg -n AppleSmartBattery -r | egrep "CycleCount|IsCharging|DesignCapacity|MaxCapacity|CurrentCapacity|DeviceName|BatterySerialNumber|Serial|TimeRemaining|Voltage"; pmset -g batt | grep %', function(error, stdout) {
              if (stdout) {
                let lines = stdout.toString().replace(/ +/g, "").replace(/"+/g, "").replace(/-/g, "").split("\n");
                result2.cycleCount = parseInt("0" + util.getValue(lines, "cyclecount", "="), 10);
                result2.voltage = parseInt("0" + util.getValue(lines, "voltage", "="), 10) / 1e3;
                result2.capacityUnit = result2.voltage ? "mWh" : "mAh";
                result2.maxCapacity = Math.round(parseInt("0" + util.getValue(lines, "applerawmaxcapacity", "="), 10) * (result2.voltage || 1));
                result2.currentCapacity = Math.round(parseInt("0" + util.getValue(lines, "applerawcurrentcapacity", "="), 10) * (result2.voltage || 1));
                result2.designedCapacity = Math.round(parseInt("0" + util.getValue(lines, "DesignCapacity", "="), 10) * (result2.voltage || 1));
                result2.manufacturer = "Apple";
                result2.serial = util.getValue(lines, "BatterySerialNumber", "=") || util.getValue(lines, "Serial", "=");
                result2.model = util.getValue(lines, "DeviceName", "=");
                let percent = null;
                const line = util.getValue(lines, "internal", "Battery");
                let parts = line.split(";");
                if (parts && parts[0]) {
                  let parts2 = parts[0].split("	");
                  if (parts2 && parts2[1]) {
                    percent = parseFloat(parts2[1].trim().replace(/%/g, ""));
                  }
                }
                if (parts && parts[1]) {
                  result2.isCharging = parts[1].trim() === "charging";
                  result2.acConnected = parts[1].trim() !== "discharging";
                } else {
                  result2.isCharging = util.getValue(lines, "ischarging", "=").toLowerCase() === "yes";
                  result2.acConnected = result2.isCharging;
                }
                if (result2.maxCapacity && result2.currentCapacity) {
                  result2.hasBattery = true;
                  result2.type = "Li-ion";
                  result2.percent = percent !== null ? percent : Math.round(100 * result2.currentCapacity / result2.maxCapacity);
                  if (!result2.isCharging) {
                    result2.timeRemaining = parseInt("0" + util.getValue(lines, "TimeRemaining", "="), 10);
                  }
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_sunos) {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
          if (_windows) {
            try {
              const workload = [];
              workload.push(util.powerShell("Get-CimInstance Win32_Battery | select BatteryStatus, DesignCapacity, DesignVoltage, EstimatedChargeRemaining, DeviceID | fl"));
              workload.push(util.powerShell("(Get-WmiObject -Class BatteryStaticData -Namespace ROOT/WMI).DesignedCapacity"));
              workload.push(util.powerShell("(Get-CimInstance -Class BatteryFullChargedCapacity -Namespace ROOT/WMI).FullChargedCapacity"));
              util.promiseAll(
                workload
              ).then((data) => {
                if (data) {
                  let parts = data.results[0].split(/\n\s*\n/);
                  let batteries = [];
                  const hasValue = (value) => /\S/.test(value);
                  for (let i = 0; i < parts.length; i++) {
                    if (hasValue(parts[i]) && (!batteries.length || !hasValue(parts[i - 1]))) {
                      batteries.push([]);
                    }
                    if (hasValue(parts[i])) {
                      batteries[batteries.length - 1].push(parts[i]);
                    }
                  }
                  let designCapacities = data.results[1].split("\r\n").filter((e) => e);
                  let fullChargeCapacities = data.results[2].split("\r\n").filter((e) => e);
                  if (batteries.length) {
                    let first = false;
                    let additionalBatteries = [];
                    for (let i = 0; i < batteries.length; i++) {
                      let lines = batteries[i][0].split("\r\n");
                      const designedCapacity = designCapacities && designCapacities.length >= i + 1 && designCapacities[i] ? util.toInt(designCapacities[i]) : 0;
                      const fullChargeCapacity = fullChargeCapacities && fullChargeCapacities.length >= i + 1 && fullChargeCapacities[i] ? util.toInt(fullChargeCapacities[i]) : 0;
                      const parsed = parseWinBatteryPart(lines, designedCapacity, fullChargeCapacity);
                      if (!first && parsed.status > 0 && parsed.status !== 10) {
                        result2.hasBattery = parsed.hasBattery;
                        result2.maxCapacity = parsed.maxCapacity;
                        result2.designedCapacity = parsed.designedCapacity;
                        result2.voltage = parsed.voltage;
                        result2.capacityUnit = parsed.capacityUnit;
                        result2.percent = parsed.percent;
                        result2.currentCapacity = parsed.currentCapacity;
                        result2.isCharging = parsed.isCharging;
                        result2.acConnected = parsed.acConnected;
                        result2.model = parsed.model;
                        first = true;
                      } else if (parsed.status !== -1) {
                        additionalBatteries.push(
                          {
                            hasBattery: parsed.hasBattery,
                            maxCapacity: parsed.maxCapacity,
                            designedCapacity: parsed.designedCapacity,
                            voltage: parsed.voltage,
                            capacityUnit: parsed.capacityUnit,
                            percent: parsed.percent,
                            currentCapacity: parsed.currentCapacity,
                            isCharging: parsed.isCharging,
                            timeRemaining: null,
                            acConnected: parsed.acConnected,
                            model: parsed.model,
                            type: "",
                            manufacturer: "",
                            serial: ""
                          }
                        );
                      }
                    }
                    if (!first && additionalBatteries.length) {
                      result2 = additionalBatteries[0];
                      additionalBatteries.shift();
                    }
                    if (additionalBatteries.length) {
                      result2.additionalBatteries = additionalBatteries;
                    }
                  }
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    };
  }
});

// node_modules/systeminformation/lib/graphics.js
var require_graphics = __commonJS({
  "node_modules/systeminformation/lib/graphics.js"(exports2) {
    "use strict";
    var fs2 = require("fs");
    var exec = require("child_process").exec;
    var execSync = require("child_process").execSync;
    var util = require_util();
    var _platform = process.platform;
    var _nvidiaSmiPath = "";
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _sunos = _platform === "sunos";
    var _resolutionX = 0;
    var _resolutionY = 0;
    var _pixelDepth = 0;
    var _refreshRate = 0;
    var videoTypes = {
      "-2": "UNINITIALIZED",
      "-1": "OTHER",
      "0": "HD15",
      "1": "SVIDEO",
      "2": "Composite video",
      "3": "Component video",
      "4": "DVI",
      "5": "HDMI",
      "6": "LVDS",
      "8": "D_JPN",
      "9": "SDI",
      "10": "DP",
      "11": "DP embedded",
      "12": "UDI",
      "13": "UDI embedded",
      "14": "SDTVDONGLE",
      "15": "MIRACAST",
      "2147483648": "INTERNAL"
    };
    function getVendorFromModel(model) {
      const manufacturers = [
        { pattern: "^LG.+", manufacturer: "LG" },
        { pattern: "^BENQ.+", manufacturer: "BenQ" },
        { pattern: "^ASUS.+", manufacturer: "Asus" },
        { pattern: "^DELL.+", manufacturer: "Dell" },
        { pattern: "^SAMSUNG.+", manufacturer: "Samsung" },
        { pattern: "^VIEWSON.+", manufacturer: "ViewSonic" },
        { pattern: "^SONY.+", manufacturer: "Sony" },
        { pattern: "^ACER.+", manufacturer: "Acer" },
        { pattern: "^AOC.+", manufacturer: "AOC Monitors" },
        { pattern: "^HP.+", manufacturer: "HP" },
        { pattern: "^EIZO.?", manufacturer: "Eizo" },
        { pattern: "^PHILIPS.?", manufacturer: "Philips" },
        { pattern: "^IIYAMA.?", manufacturer: "Iiyama" },
        { pattern: "^SHARP.?", manufacturer: "Sharp" },
        { pattern: "^NEC.?", manufacturer: "NEC" },
        { pattern: "^LENOVO.?", manufacturer: "Lenovo" },
        { pattern: "COMPAQ.?", manufacturer: "Compaq" },
        { pattern: "APPLE.?", manufacturer: "Apple" },
        { pattern: "INTEL.?", manufacturer: "Intel" },
        { pattern: "AMD.?", manufacturer: "AMD" },
        { pattern: "NVIDIA.?", manufacturer: "NVDIA" }
      ];
      let result2 = "";
      if (model) {
        model = model.toUpperCase();
        manufacturers.forEach((manufacturer) => {
          const re = RegExp(manufacturer.pattern);
          if (re.test(model)) {
            result2 = manufacturer.manufacturer;
          }
        });
      }
      return result2;
    }
    function getVendorFromId(id) {
      const vendors = {
        "610": "Apple",
        "1e6d": "LG",
        "10ac": "DELL",
        "4dd9": "Sony",
        "38a3": "NEC"
      };
      return vendors[id] || "";
    }
    function vendorToId(str) {
      let result2 = "";
      str = (str || "").toLowerCase();
      if (str.indexOf("apple") >= 0) {
        result2 = "0x05ac";
      } else if (str.indexOf("nvidia") >= 0) {
        result2 = "0x10de";
      } else if (str.indexOf("intel") >= 0) {
        result2 = "0x8086";
      } else if (str.indexOf("ati") >= 0 || str.indexOf("amd") >= 0) {
        result2 = "0x1002";
      }
      return result2;
    }
    function getMetalVersion(id) {
      const families = {
        "spdisplays_mtlgpufamilymac1": "mac1",
        "spdisplays_mtlgpufamilymac2": "mac2",
        "spdisplays_mtlgpufamilyapple1": "apple1",
        "spdisplays_mtlgpufamilyapple2": "apple2",
        "spdisplays_mtlgpufamilyapple3": "apple3",
        "spdisplays_mtlgpufamilyapple4": "apple4",
        "spdisplays_mtlgpufamilyapple5": "apple5",
        "spdisplays_mtlgpufamilyapple6": "apple6",
        "spdisplays_mtlgpufamilyapple7": "apple7",
        "spdisplays_metalfeaturesetfamily11": "family1_v1",
        "spdisplays_metalfeaturesetfamily12": "family1_v2",
        "spdisplays_metalfeaturesetfamily13": "family1_v3",
        "spdisplays_metalfeaturesetfamily14": "family1_v4",
        "spdisplays_metalfeaturesetfamily21": "family2_v1"
      };
      return families[id] || "";
    }
    function graphics(callback) {
      function parseLinesDarwin(graphicsArr) {
        const res = {
          controllers: [],
          displays: []
        };
        try {
          graphicsArr.forEach(function(item) {
            const bus = (item.sppci_bus || "").indexOf("builtin") > -1 ? "Built-In" : (item.sppci_bus || "").indexOf("pcie") > -1 ? "PCIe" : "";
            const vram = (parseInt(item.spdisplays_vram || "", 10) || 0) * ((item.spdisplays_vram || "").indexOf("GB") > -1 ? 1024 : 1);
            const vramDyn = (parseInt(item.spdisplays_vram_shared || "", 10) || 0) * ((item.spdisplays_vram_shared || "").indexOf("GB") > -1 ? 1024 : 1);
            let metalVersion = getMetalVersion(item.spdisplays_metal || item.spdisplays_metalfamily || "");
            res.controllers.push({
              vendor: getVendorFromModel(item.spdisplays_vendor || "") || item.spdisplays_vendor || "",
              model: item.sppci_model || "",
              bus,
              vramDynamic: bus === "Built-In",
              vram: vram || vramDyn || null,
              deviceId: item["spdisplays_device-id"] || "",
              vendorId: item["spdisplays_vendor-id"] || vendorToId((item["spdisplays_vendor"] || "") + (item.sppci_model || "")),
              external: item.sppci_device_type === "spdisplays_egpu",
              cores: item["sppci_cores"] || null,
              metalVersion
            });
            if (item.spdisplays_ndrvs && item.spdisplays_ndrvs.length) {
              item.spdisplays_ndrvs.forEach(function(displayItem) {
                const connectionType = displayItem["spdisplays_connection_type"] || "";
                const currentResolutionParts = (displayItem["_spdisplays_resolution"] || "").split("@");
                const currentResolution = currentResolutionParts[0].split("x");
                const pixelParts = (displayItem["_spdisplays_pixels"] || "").split("x");
                const pixelDepthString = displayItem["spdisplays_depth"] || "";
                const serial = displayItem["_spdisplays_display-serial-number"] || displayItem["_spdisplays_display-serial-number2"] || null;
                res.displays.push({
                  vendor: getVendorFromId(displayItem["_spdisplays_display-vendor-id"] || "") || getVendorFromModel(displayItem["_name"] || ""),
                  vendorId: displayItem["_spdisplays_display-vendor-id"] || "",
                  model: displayItem["_name"] || "",
                  productionYear: displayItem["_spdisplays_display-year"] || null,
                  serial: serial !== "0" ? serial : null,
                  displayId: displayItem["_spdisplays_displayID"] || null,
                  main: displayItem["spdisplays_main"] ? displayItem["spdisplays_main"] === "spdisplays_yes" : false,
                  builtin: (displayItem["spdisplays_display_type"] || "").indexOf("built-in") > -1,
                  connection: connectionType.indexOf("_internal") > -1 ? "Internal" : connectionType.indexOf("_displayport") > -1 ? "Display Port" : connectionType.indexOf("_hdmi") > -1 ? "HDMI" : null,
                  sizeX: null,
                  sizeY: null,
                  pixelDepth: pixelDepthString === "CGSThirtyBitColor" ? 30 : pixelDepthString === "CGSThirtytwoBitColor" ? 32 : pixelDepthString === "CGSTwentyfourBitColor" ? 24 : null,
                  resolutionX: pixelParts.length > 1 ? parseInt(pixelParts[0], 10) : null,
                  resolutionY: pixelParts.length > 1 ? parseInt(pixelParts[1], 10) : null,
                  currentResX: currentResolution.length > 1 ? parseInt(currentResolution[0], 10) : null,
                  currentResY: currentResolution.length > 1 ? parseInt(currentResolution[1], 10) : null,
                  positionX: 0,
                  positionY: 0,
                  currentRefreshRate: currentResolutionParts.length > 1 ? parseInt(currentResolutionParts[1], 10) : null
                });
              });
            }
          });
          return res;
        } catch (e) {
          return res;
        }
      }
      function parseLinesLinuxControllers(lines) {
        let controllers = [];
        let currentController = {
          vendor: "",
          subVendor: "",
          model: "",
          bus: "",
          busAddress: "",
          vram: null,
          vramDynamic: false,
          pciID: ""
        };
        let isGraphicsController = false;
        let pciIDs = [];
        try {
          pciIDs = execSync('export LC_ALL=C; dmidecode -t 9 2>/dev/null; unset LC_ALL | grep "Bus Address: "', util.execOptsLinux).toString().split("\n");
          for (let i2 = 0; i2 < pciIDs.length; i2++) {
            pciIDs[i2] = pciIDs[i2].replace("Bus Address:", "").replace("0000:", "").trim();
          }
          pciIDs = pciIDs.filter(function(el) {
            return el != null && el;
          });
        } catch (e) {
          util.noop();
        }
        let i = 1;
        lines.forEach((line) => {
          let subsystem = "";
          if (i < lines.length && lines[i]) {
            subsystem = lines[i];
            if (subsystem.indexOf(":") > 0) {
              subsystem = subsystem.split(":")[1];
            }
          }
          if ("" !== line.trim()) {
            if (" " !== line[0] && "	" !== line[0]) {
              let isExternal = pciIDs.indexOf(line.split(" ")[0]) >= 0;
              let vgapos = line.toLowerCase().indexOf(" vga ");
              let _3dcontrollerpos = line.toLowerCase().indexOf("3d controller");
              if (vgapos !== -1 || _3dcontrollerpos !== -1) {
                if (_3dcontrollerpos !== -1 && vgapos === -1) {
                  vgapos = _3dcontrollerpos;
                }
                if (currentController.vendor || currentController.model || currentController.bus || currentController.vram !== null || currentController.vramDynamic) {
                  controllers.push(currentController);
                  currentController = {
                    vendor: "",
                    model: "",
                    bus: "",
                    busAddress: "",
                    vram: null,
                    vramDynamic: false
                  };
                }
                const pciIDCandidate = line.split(" ")[0];
                if (/[\da-fA-F]{2}:[\da-fA-F]{2}\.[\da-fA-F]/.test(pciIDCandidate)) {
                  currentController.busAddress = pciIDCandidate;
                }
                isGraphicsController = true;
                let endpos = line.search(/\[[0-9a-f]{4}:[0-9a-f]{4}]|$/);
                let parts = line.substr(vgapos, endpos - vgapos).split(":");
                currentController.busAddress = line.substr(0, vgapos).trim();
                if (parts.length > 1) {
                  parts[1] = parts[1].trim();
                  if (parts[1].toLowerCase().indexOf("corporation") >= 0) {
                    currentController.vendor = parts[1].substr(0, parts[1].toLowerCase().indexOf("corporation") + 11).trim();
                    currentController.model = parts[1].substr(parts[1].toLowerCase().indexOf("corporation") + 11, 200).split("(")[0].trim();
                    currentController.bus = pciIDs.length > 0 && isExternal ? "PCIe" : "Onboard";
                    currentController.vram = null;
                    currentController.vramDynamic = false;
                  } else if (parts[1].toLowerCase().indexOf(" inc.") >= 0) {
                    if ((parts[1].match(/]/g) || []).length > 1) {
                      currentController.vendor = parts[1].substr(0, parts[1].toLowerCase().indexOf("]") + 1).trim();
                      currentController.model = parts[1].substr(parts[1].toLowerCase().indexOf("]") + 1, 200).trim().split("(")[0].trim();
                    } else {
                      currentController.vendor = parts[1].substr(0, parts[1].toLowerCase().indexOf(" inc.") + 5).trim();
                      currentController.model = parts[1].substr(parts[1].toLowerCase().indexOf(" inc.") + 5, 200).trim().split("(")[0].trim();
                    }
                    currentController.bus = pciIDs.length > 0 && isExternal ? "PCIe" : "Onboard";
                    currentController.vram = null;
                    currentController.vramDynamic = false;
                  } else if (parts[1].toLowerCase().indexOf(" ltd.") >= 0) {
                    if ((parts[1].match(/]/g) || []).length > 1) {
                      currentController.vendor = parts[1].substr(0, parts[1].toLowerCase().indexOf("]") + 1).trim();
                      currentController.model = parts[1].substr(parts[1].toLowerCase().indexOf("]") + 1, 200).trim().split("(")[0].trim();
                    } else {
                      currentController.vendor = parts[1].substr(0, parts[1].toLowerCase().indexOf(" ltd.") + 5).trim();
                      currentController.model = parts[1].substr(parts[1].toLowerCase().indexOf(" ltd.") + 5, 200).trim().split("(")[0].trim();
                    }
                  }
                  if (currentController.model && subsystem.indexOf(currentController.model) !== -1) {
                    const subVendor = subsystem.split(currentController.model)[0].trim();
                    if (subVendor) {
                      currentController.subVendor = subVendor;
                    }
                  }
                }
              } else {
                isGraphicsController = false;
              }
            }
            if (isGraphicsController) {
              let parts = line.split(":");
              if (parts.length > 1 && parts[0].replace(/ +/g, "").toLowerCase().indexOf("devicename") !== -1 && parts[1].toLowerCase().indexOf("onboard") !== -1) {
                currentController.bus = "Onboard";
              }
              if (parts.length > 1 && parts[0].replace(/ +/g, "").toLowerCase().indexOf("region") !== -1 && parts[1].toLowerCase().indexOf("memory") !== -1) {
                let memparts = parts[1].split("=");
                if (memparts.length > 1) {
                  currentController.vram = parseInt(memparts[1]);
                }
              }
            }
          }
          i++;
        });
        if (currentController.vendor || currentController.model || currentController.bus || currentController.busAddress || currentController.vram !== null || currentController.vramDynamic) {
          controllers.push(currentController);
        }
        return controllers;
      }
      function parseLinesLinuxClinfo(controllers, lines) {
        const fieldPattern = /\[([^\]]+)\]\s+(\w+)\s+(.*)/;
        const devices = lines.reduce((devices2, line) => {
          const field = fieldPattern.exec(line.trim());
          if (field) {
            if (!devices2[field[1]]) {
              devices2[field[1]] = {};
            }
            devices2[field[1]][field[2]] = field[3];
          }
          return devices2;
        }, {});
        for (let deviceId in devices) {
          const device = devices[deviceId];
          if (device["CL_DEVICE_TYPE"] === "CL_DEVICE_TYPE_GPU") {
            let busAddress;
            if (device["CL_DEVICE_TOPOLOGY_AMD"]) {
              const bdf = device["CL_DEVICE_TOPOLOGY_AMD"].match(/[a-zA-Z0-9]+:\d+\.\d+/);
              if (bdf) {
                busAddress = bdf[0];
              }
            } else if (device["CL_DEVICE_PCI_BUS_ID_NV"] && device["CL_DEVICE_PCI_SLOT_ID_NV"]) {
              const bus = parseInt(device["CL_DEVICE_PCI_BUS_ID_NV"]);
              const slot = parseInt(device["CL_DEVICE_PCI_SLOT_ID_NV"]);
              if (!isNaN(bus) && !isNaN(slot)) {
                const b = bus & 255;
                const d = slot >> 3 & 255;
                const f = slot & 7;
                busAddress = `${b.toString().padStart(2, "0")}:${d.toString().padStart(2, "0")}.${f}`;
              }
            }
            if (busAddress) {
              let controller = controllers.find((controller2) => controller2.busAddress === busAddress);
              if (!controller) {
                controller = {
                  vendor: "",
                  model: "",
                  bus: "",
                  busAddress,
                  vram: null,
                  vramDynamic: false
                };
                controllers.push(controller);
              }
              controller.vendor = device["CL_DEVICE_VENDOR"];
              if (device["CL_DEVICE_BOARD_NAME_AMD"]) {
                controller.model = device["CL_DEVICE_BOARD_NAME_AMD"];
              } else {
                controller.model = device["CL_DEVICE_NAME"];
              }
              const memory = parseInt(device["CL_DEVICE_GLOBAL_MEM_SIZE"]);
              if (!isNaN(memory)) {
                controller.vram = Math.round(memory / 1024 / 1024);
              }
            }
          }
        }
        return controllers;
      }
      function getNvidiaSmi() {
        if (_nvidiaSmiPath) {
          return _nvidiaSmiPath;
        }
        if (_windows) {
          try {
            const basePath = util.WINDIR + "\\System32\\DriverStore\\FileRepository";
            const candidateDirs = fs2.readdirSync(basePath).filter((dir) => {
              return fs2.readdirSync([basePath, dir].join("/")).includes("nvidia-smi.exe");
            });
            const targetDir = candidateDirs.reduce((prevDir, currentDir) => {
              const previousNvidiaSmi = fs2.statSync([basePath, prevDir, "nvidia-smi.exe"].join("/"));
              const currentNvidiaSmi = fs2.statSync([basePath, currentDir, "nvidia-smi.exe"].join("/"));
              return previousNvidiaSmi.ctimeMs > currentNvidiaSmi.ctimeMs ? prevDir : currentDir;
            });
            if (targetDir) {
              _nvidiaSmiPath = [basePath, targetDir, "nvidia-smi.exe"].join("/");
            }
          } catch (e) {
            util.noop();
          }
        } else if (_linux) {
          _nvidiaSmiPath = "nvidia-smi";
        }
        return _nvidiaSmiPath;
      }
      function nvidiaSmi(options) {
        const nvidiaSmiExe = getNvidiaSmi();
        options = options || util.execOptsWin;
        if (nvidiaSmiExe) {
          const nvidiaSmiOpts = "--query-gpu=driver_version,pci.sub_device_id,name,pci.bus_id,fan.speed,memory.total,memory.used,memory.free,utilization.gpu,utilization.memory,temperature.gpu,temperature.memory,power.draw,power.limit,clocks.gr,clocks.mem --format=csv,noheader,nounits";
          const cmd = nvidiaSmiExe + " " + nvidiaSmiOpts + (_linux ? "  2>/dev/null" : "");
          if (_linux) {
            options.stdio = ["pipe", "pipe", "ignore"];
          }
          try {
            const sanitized = util.sanitizeShellString(cmd);
            const res = execSync(sanitized, options).toString();
            return res;
          } catch (e) {
            util.noop();
          }
        }
        return "";
      }
      function nvidiaDevices() {
        function safeParseNumber(value) {
          if ([null, void 0].includes(value)) {
            return value;
          }
          return parseFloat(value);
        }
        const stdout = nvidiaSmi();
        if (!stdout) {
          return [];
        }
        const gpus = stdout.split("\n").filter(Boolean);
        let results = gpus.map((gpu) => {
          const splittedData = gpu.split(", ").map((value) => value.includes("N/A") ? void 0 : value);
          if (splittedData.length === 16) {
            return {
              driverVersion: splittedData[0],
              subDeviceId: splittedData[1],
              name: splittedData[2],
              pciBus: splittedData[3],
              fanSpeed: safeParseNumber(splittedData[4]),
              memoryTotal: safeParseNumber(splittedData[5]),
              memoryUsed: safeParseNumber(splittedData[6]),
              memoryFree: safeParseNumber(splittedData[7]),
              utilizationGpu: safeParseNumber(splittedData[8]),
              utilizationMemory: safeParseNumber(splittedData[9]),
              temperatureGpu: safeParseNumber(splittedData[10]),
              temperatureMemory: safeParseNumber(splittedData[11]),
              powerDraw: safeParseNumber(splittedData[12]),
              powerLimit: safeParseNumber(splittedData[13]),
              clockCore: safeParseNumber(splittedData[14]),
              clockMemory: safeParseNumber(splittedData[15])
            };
          } else {
            return {};
          }
        });
        results = results.filter((item) => {
          return "pciBus" in item;
        });
        return results;
      }
      function mergeControllerNvidia(controller, nvidia) {
        if (nvidia.driverVersion) {
          controller.driverVersion = nvidia.driverVersion;
        }
        if (nvidia.subDeviceId) {
          controller.subDeviceId = nvidia.subDeviceId;
        }
        if (nvidia.name) {
          controller.name = nvidia.name;
        }
        if (nvidia.pciBus) {
          controller.pciBus = nvidia.pciBus;
        }
        if (nvidia.fanSpeed) {
          controller.fanSpeed = nvidia.fanSpeed;
        }
        if (nvidia.memoryTotal) {
          controller.memoryTotal = nvidia.memoryTotal;
          controller.vram = nvidia.memoryTotal;
          controller.vramDynamic = false;
        }
        if (nvidia.memoryUsed) {
          controller.memoryUsed = nvidia.memoryUsed;
        }
        if (nvidia.memoryFree) {
          controller.memoryFree = nvidia.memoryFree;
        }
        if (nvidia.utilizationGpu) {
          controller.utilizationGpu = nvidia.utilizationGpu;
        }
        if (nvidia.utilizationMemory) {
          controller.utilizationMemory = nvidia.utilizationMemory;
        }
        if (nvidia.temperatureGpu) {
          controller.temperatureGpu = nvidia.temperatureGpu;
        }
        if (nvidia.temperatureMemory) {
          controller.temperatureMemory = nvidia.temperatureMemory;
        }
        if (nvidia.powerDraw) {
          controller.powerDraw = nvidia.powerDraw;
        }
        if (nvidia.powerLimit) {
          controller.powerLimit = nvidia.powerLimit;
        }
        if (nvidia.clockCore) {
          controller.clockCore = nvidia.clockCore;
        }
        if (nvidia.clockMemory) {
          controller.clockMemory = nvidia.clockMemory;
        }
        return controller;
      }
      function parseLinesLinuxEdid(edid) {
        let result2 = {
          vendor: "",
          model: "",
          deviceName: "",
          main: false,
          builtin: false,
          connection: "",
          sizeX: null,
          sizeY: null,
          pixelDepth: null,
          resolutionX: null,
          resolutionY: null,
          currentResX: null,
          currentResY: null,
          positionX: 0,
          positionY: 0,
          currentRefreshRate: null
        };
        let start = 108;
        if (edid.substr(start, 6) === "000000") {
          start += 36;
        }
        if (edid.substr(start, 6) === "000000") {
          start += 36;
        }
        if (edid.substr(start, 6) === "000000") {
          start += 36;
        }
        if (edid.substr(start, 6) === "000000") {
          start += 36;
        }
        result2.resolutionX = parseInt("0x0" + edid.substr(start + 8, 1) + edid.substr(start + 4, 2));
        result2.resolutionY = parseInt("0x0" + edid.substr(start + 14, 1) + edid.substr(start + 10, 2));
        result2.sizeX = parseInt("0x0" + edid.substr(start + 28, 1) + edid.substr(start + 24, 2));
        result2.sizeY = parseInt("0x0" + edid.substr(start + 29, 1) + edid.substr(start + 26, 2));
        start = edid.indexOf("000000fc00");
        if (start >= 0) {
          let model_raw = edid.substr(start + 10, 26);
          if (model_raw.indexOf("0a") !== -1) {
            model_raw = model_raw.substr(0, model_raw.indexOf("0a"));
          }
          try {
            if (model_raw.length > 2) {
              result2.model = model_raw.match(/.{1,2}/g).map(function(v) {
                return String.fromCharCode(parseInt(v, 16));
              }).join("");
            }
          } catch (e) {
            util.noop();
          }
        } else {
          result2.model = "";
        }
        return result2;
      }
      function parseLinesLinuxDisplays(lines, depth) {
        let displays = [];
        let currentDisplay = {
          vendor: "",
          model: "",
          deviceName: "",
          main: false,
          builtin: false,
          connection: "",
          sizeX: null,
          sizeY: null,
          pixelDepth: null,
          resolutionX: null,
          resolutionY: null,
          currentResX: null,
          currentResY: null,
          positionX: 0,
          positionY: 0,
          currentRefreshRate: null
        };
        let is_edid = false;
        let is_current = false;
        let edid_raw = "";
        let start = 0;
        for (let i = 1; i < lines.length; i++) {
          if ("" !== lines[i].trim()) {
            if (" " !== lines[i][0] && "	" !== lines[i][0] && lines[i].toLowerCase().indexOf(" connected ") !== -1) {
              if (currentDisplay.model || currentDisplay.main || currentDisplay.builtin || currentDisplay.connection || currentDisplay.sizeX !== null || currentDisplay.pixelDepth !== null || currentDisplay.resolutionX !== null) {
                displays.push(currentDisplay);
                currentDisplay = {
                  vendor: "",
                  model: "",
                  main: false,
                  builtin: false,
                  connection: "",
                  sizeX: null,
                  sizeY: null,
                  pixelDepth: null,
                  resolutionX: null,
                  resolutionY: null,
                  currentResX: null,
                  currentResY: null,
                  positionX: 0,
                  positionY: 0,
                  currentRefreshRate: null
                };
              }
              let parts = lines[i].split(" ");
              currentDisplay.connection = parts[0];
              currentDisplay.main = lines[i].toLowerCase().indexOf(" primary ") >= 0;
              currentDisplay.builtin = parts[0].toLowerCase().indexOf("edp") >= 0;
            }
            if (is_edid) {
              if (lines[i].search(/\S|$/) > start) {
                edid_raw += lines[i].toLowerCase().trim();
              } else {
                let edid_decoded = parseLinesLinuxEdid(edid_raw);
                currentDisplay.vendor = edid_decoded.vendor;
                currentDisplay.model = edid_decoded.model;
                currentDisplay.resolutionX = edid_decoded.resolutionX;
                currentDisplay.resolutionY = edid_decoded.resolutionY;
                currentDisplay.sizeX = edid_decoded.sizeX;
                currentDisplay.sizeY = edid_decoded.sizeY;
                currentDisplay.pixelDepth = depth;
                is_edid = false;
              }
            }
            if (lines[i].toLowerCase().indexOf("edid:") >= 0) {
              is_edid = true;
              start = lines[i].search(/\S|$/);
            }
            if (lines[i].toLowerCase().indexOf("*current") >= 0) {
              const parts1 = lines[i].split("(");
              if (parts1 && parts1.length > 1 && parts1[0].indexOf("x") >= 0) {
                const resParts = parts1[0].trim().split("x");
                currentDisplay.currentResX = util.toInt(resParts[0]);
                currentDisplay.currentResY = util.toInt(resParts[1]);
              }
              is_current = true;
            }
            if (is_current && lines[i].toLowerCase().indexOf("clock") >= 0 && lines[i].toLowerCase().indexOf("hz") >= 0 && lines[i].toLowerCase().indexOf("v: height") >= 0) {
              const parts1 = lines[i].split("clock");
              if (parts1 && parts1.length > 1 && parts1[1].toLowerCase().indexOf("hz") >= 0) {
                currentDisplay.currentRefreshRate = util.toInt(parts1[1]);
              }
              is_current = false;
            }
          }
        }
        if (currentDisplay.model || currentDisplay.main || currentDisplay.builtin || currentDisplay.connection || currentDisplay.sizeX !== null || currentDisplay.pixelDepth !== null || currentDisplay.resolutionX !== null) {
          displays.push(currentDisplay);
        }
        return displays;
      }
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = {
            controllers: [],
            displays: []
          };
          if (_darwin) {
            let cmd = "system_profiler -xml -detailLevel full SPDisplaysDataType";
            exec(cmd, function(error, stdout) {
              if (!error) {
                try {
                  const output = stdout.toString();
                  result2 = parseLinesDarwin(util.plistParser(output)[0]._items);
                } catch (e) {
                  util.noop();
                }
                try {
                  stdout = execSync('defaults read /Library/Preferences/com.apple.windowserver.plist 2>/dev/null;defaults read /Library/Preferences/com.apple.windowserver.displays.plist 2>/dev/null; echo ""', { maxBuffer: 1024 * 2e4 });
                  const output = (stdout || "").toString();
                  const obj = util.plistReader(output);
                  if (obj["DisplayAnyUserSets"] && obj["DisplayAnyUserSets"]["Configs"] && obj["DisplayAnyUserSets"]["Configs"][0] && obj["DisplayAnyUserSets"]["Configs"][0]["DisplayConfig"]) {
                    const current = obj["DisplayAnyUserSets"]["Configs"][0]["DisplayConfig"];
                    let i = 0;
                    current.forEach((o) => {
                      if (o["CurrentInfo"] && o["CurrentInfo"]["OriginX"] !== void 0 && result2.displays && result2.displays[i]) {
                        result2.displays[i].positionX = o["CurrentInfo"]["OriginX"];
                      }
                      if (o["CurrentInfo"] && o["CurrentInfo"]["OriginY"] !== void 0 && result2.displays && result2.displays[i]) {
                        result2.displays[i].positionY = o["CurrentInfo"]["OriginY"];
                      }
                      i++;
                    });
                  }
                  if (obj["DisplayAnyUserSets"] && obj["DisplayAnyUserSets"].length > 0 && obj["DisplayAnyUserSets"][0].length > 0 && obj["DisplayAnyUserSets"][0][0]["DisplayID"]) {
                    const current = obj["DisplayAnyUserSets"][0];
                    let i = 0;
                    current.forEach((o) => {
                      if ("OriginX" in o && result2.displays && result2.displays[i]) {
                        result2.displays[i].positionX = o["OriginX"];
                      }
                      if ("OriginY" in o && result2.displays && result2.displays[i]) {
                        result2.displays[i].positionY = o["OriginY"];
                      }
                      if (o["Mode"] && o["Mode"]["BitsPerPixel"] !== void 0 && result2.displays && result2.displays[i]) {
                        result2.displays[i].pixelDepth = o["Mode"]["BitsPerPixel"];
                      }
                      i++;
                    });
                  }
                } catch (e) {
                  util.noop();
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_linux) {
            if (util.isRaspberry()) {
              let cmd2 = `fbset -s 2> /dev/null | grep 'mode "' ; vcgencmd get_mem gpu 2> /dev/null; tvservice -s 2> /dev/null; tvservice -n 2> /dev/null;`;
              exec(cmd2, function(error, stdout) {
                let lines = stdout.toString().split("\n");
                if (lines.length > 3 && lines[0].indexOf('mode "') >= -1 && lines[2].indexOf("0x12000a") > -1) {
                  const parts = lines[0].replace("mode", "").replace(/"/g, "").trim().split("x");
                  if (parts.length === 2) {
                    result2.displays.push({
                      vendor: "",
                      model: util.getValue(lines, "device_name", "="),
                      main: true,
                      builtin: false,
                      connection: "HDMI",
                      sizeX: null,
                      sizeY: null,
                      pixelDepth: null,
                      resolutionX: parseInt(parts[0], 10),
                      resolutionY: parseInt(parts[1], 10),
                      currentResX: null,
                      currentResY: null,
                      positionX: 0,
                      positionY: 0,
                      currentRefreshRate: null
                    });
                  }
                }
                if (lines.length >= 1 && stdout.toString().indexOf("gpu=") >= -1) {
                  result2.controllers.push({
                    vendor: "Broadcom",
                    model: util.getRpiGpu(),
                    bus: "",
                    vram: util.getValue(lines, "gpu", "=").replace("M", ""),
                    vramDynamic: true
                  });
                }
              });
            }
            let cmd = "lspci -vvv  2>/dev/null";
            exec(cmd, function(error, stdout) {
              if (!error) {
                let lines = stdout.toString().split("\n");
                if (result2.controllers.length === 0) {
                  result2.controllers = parseLinesLinuxControllers(lines);
                  const nvidiaData = nvidiaDevices();
                  result2.controllers = result2.controllers.map((controller) => {
                    return mergeControllerNvidia(controller, nvidiaData.find((contr) => contr.pciBus.toLowerCase().endsWith(controller.busAddress.toLowerCase())) || {});
                  });
                }
              }
              let cmd2 = "clinfo --raw";
              exec(cmd2, function(error2, stdout2) {
                if (!error2) {
                  let lines = stdout2.toString().split("\n");
                  result2.controllers = parseLinesLinuxClinfo(result2.controllers, lines);
                }
                let cmd3 = "xdpyinfo 2>/dev/null | grep 'depth of root window' | awk '{ print $5 }'";
                exec(cmd3, function(error3, stdout3) {
                  let depth = 0;
                  if (!error3) {
                    let lines = stdout3.toString().split("\n");
                    depth = parseInt(lines[0]) || 0;
                  }
                  let cmd4 = "xrandr --verbose 2>/dev/null";
                  exec(cmd4, function(error4, stdout4) {
                    if (!error4) {
                      let lines = stdout4.toString().split("\n");
                      result2.displays = parseLinesLinuxDisplays(lines, depth);
                    }
                    if (callback) {
                      callback(result2);
                    }
                    resolve(result2);
                  });
                });
              });
            });
          }
          if (_freebsd || _openbsd || _netbsd) {
            if (callback) {
              callback(null);
            }
            resolve(null);
          }
          if (_sunos) {
            if (callback) {
              callback(null);
            }
            resolve(null);
          }
          if (_windows) {
            try {
              const workload = [];
              workload.push(util.powerShell("Get-CimInstance win32_VideoController | fl *"));
              workload.push(util.powerShell('gp "HKLM:\\SYSTEM\\ControlSet001\\Control\\Class\\{4d36e968-e325-11ce-bfc1-08002be10318}\\*" -ErrorAction SilentlyContinue | where MatchingDeviceId $null -NE | select MatchingDeviceId,HardwareInformation.qwMemorySize | fl'));
              workload.push(util.powerShell("Get-CimInstance win32_desktopmonitor | fl *"));
              workload.push(util.powerShell("Get-CimInstance -Namespace root\\wmi -ClassName WmiMonitorBasicDisplayParams | fl"));
              workload.push(util.powerShell("Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.Screen]::AllScreens"));
              workload.push(util.powerShell("Get-CimInstance -Namespace root\\wmi -ClassName WmiMonitorConnectionParams | fl"));
              workload.push(util.powerShell('gwmi WmiMonitorID -Namespace root\\wmi | ForEach-Object {(($_.ManufacturerName -notmatch 0 | foreach {[char]$_}) -join "") + "|" + (($_.ProductCodeID -notmatch 0 | foreach {[char]$_}) -join "") + "|" + (($_.UserFriendlyName -notmatch 0 | foreach {[char]$_}) -join "") + "|" + (($_.SerialNumberID -notmatch 0 | foreach {[char]$_}) -join "") + "|" + $_.InstanceName}'));
              const nvidiaData = nvidiaDevices();
              Promise.all(
                workload
              ).then((data) => {
                let csections = data[0].replace(/\r/g, "").split(/\n\s*\n/);
                let vsections = data[1].replace(/\r/g, "").split(/\n\s*\n/);
                result2.controllers = parseLinesWindowsControllers(csections, vsections);
                result2.controllers = result2.controllers.map((controller) => {
                  if (controller.vendor.toLowerCase() === "nvidia") {
                    return mergeControllerNvidia(controller, nvidiaData.find((device) => {
                      let windowsSubDeviceId = (controller.subDeviceId || "").toLowerCase();
                      const nvidiaSubDeviceIdParts = device.subDeviceId.split("x");
                      let nvidiaSubDeviceId = nvidiaSubDeviceIdParts.length > 1 ? nvidiaSubDeviceIdParts[1].toLowerCase() : nvidiaSubDeviceIdParts[0].toLowerCase();
                      const lengthDifference = Math.abs(windowsSubDeviceId.length - nvidiaSubDeviceId.length);
                      if (windowsSubDeviceId.length > nvidiaSubDeviceId.length) {
                        for (let i = 0; i < lengthDifference; i++) {
                          nvidiaSubDeviceId = "0" + nvidiaSubDeviceId;
                        }
                      } else if (windowsSubDeviceId.length < nvidiaSubDeviceId.length) {
                        for (let i = 0; i < lengthDifference; i++) {
                          windowsSubDeviceId = "0" + windowsSubDeviceId;
                        }
                      }
                      return windowsSubDeviceId === nvidiaSubDeviceId;
                    }) || {});
                  } else {
                    return controller;
                  }
                });
                let dsections = data[2].replace(/\r/g, "").split(/\n\s*\n/);
                if (dsections[0].trim() === "") {
                  dsections.shift();
                }
                if (dsections.length && dsections[dsections.length - 1].trim() === "") {
                  dsections.pop();
                }
                let msections = data[3].replace(/\r/g, "").split("Active ");
                msections.shift();
                let ssections = data[4].replace(/\r/g, "").split("BitsPerPixel ");
                ssections.shift();
                let tsections = data[5].replace(/\r/g, "").split(/\n\s*\n/);
                tsections.shift();
                const res = data[6].replace(/\r/g, "").split(/\n/);
                let isections = [];
                res.forEach((element) => {
                  const parts = element.split("|");
                  if (parts.length === 5) {
                    isections.push({
                      vendor: parts[0],
                      code: parts[1],
                      model: parts[2],
                      serial: parts[3],
                      instanceId: parts[4]
                    });
                  }
                });
                result2.displays = parseLinesWindowsDisplaysPowershell(ssections, msections, dsections, tsections, isections);
                if (result2.displays.length === 1) {
                  if (_resolutionX) {
                    result2.displays[0].resolutionX = _resolutionX;
                    if (!result2.displays[0].currentResX) {
                      result2.displays[0].currentResX = _resolutionX;
                    }
                  }
                  if (_resolutionY) {
                    result2.displays[0].resolutionY = _resolutionY;
                    if (result2.displays[0].currentResY === 0) {
                      result2.displays[0].currentResY = _resolutionY;
                    }
                  }
                  if (_pixelDepth) {
                    result2.displays[0].pixelDepth = _pixelDepth;
                  }
                }
                result2.displays = result2.displays.map((element) => {
                  if (_refreshRate && !element.currentRefreshRate) {
                    element.currentRefreshRate = _refreshRate;
                  }
                  return element;
                });
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              }).catch(() => {
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
      function parseLinesWindowsControllers(sections, vections) {
        const memorySizes = {};
        for (const i in vections) {
          if ({}.hasOwnProperty.call(vections, i)) {
            if (vections[i].trim() !== "") {
              const lines = vections[i].trim().split("\n");
              const matchingDeviceId = util.getValue(lines, "MatchingDeviceId").match(/PCI\\(VEN_[0-9A-F]{4})&(DEV_[0-9A-F]{4})(?:&(SUBSYS_[0-9A-F]{8}))?(?:&(REV_[0-9A-F]{2}))?/i);
              if (matchingDeviceId) {
                const quadWordmemorySize = parseInt(util.getValue(lines, "HardwareInformation.qwMemorySize"));
                if (!isNaN(quadWordmemorySize)) {
                  let deviceId = matchingDeviceId[1].toUpperCase() + "&" + matchingDeviceId[2].toUpperCase();
                  if (matchingDeviceId[3]) {
                    deviceId += "&" + matchingDeviceId[3].toUpperCase();
                  }
                  if (matchingDeviceId[4]) {
                    deviceId += "&" + matchingDeviceId[4].toUpperCase();
                  }
                  memorySizes[deviceId] = quadWordmemorySize;
                }
              }
            }
          }
        }
        let controllers = [];
        for (let i in sections) {
          if ({}.hasOwnProperty.call(sections, i)) {
            if (sections[i].trim() !== "") {
              let lines = sections[i].trim().split("\n");
              let pnpDeviceId = util.getValue(lines, "PNPDeviceID", ":").match(/PCI\\(VEN_[0-9A-F]{4})&(DEV_[0-9A-F]{4})(?:&(SUBSYS_[0-9A-F]{8}))?(?:&(REV_[0-9A-F]{2}))?/i);
              let subDeviceId = null;
              let memorySize = null;
              if (pnpDeviceId) {
                subDeviceId = pnpDeviceId[3] || "";
                if (subDeviceId) {
                  subDeviceId = subDeviceId.split("_")[1];
                }
                if (memorySize == null && pnpDeviceId[3] && pnpDeviceId[4]) {
                  const deviceId = pnpDeviceId[1].toUpperCase() + "&" + pnpDeviceId[2].toUpperCase() + "&" + pnpDeviceId[3].toUpperCase() + "&" + pnpDeviceId[4].toUpperCase();
                  if ({}.hasOwnProperty.call(memorySizes, deviceId)) {
                    memorySize = memorySizes[deviceId];
                  }
                }
                if (memorySize == null && pnpDeviceId[3]) {
                  const deviceId = pnpDeviceId[1].toUpperCase() + "&" + pnpDeviceId[2].toUpperCase() + "&" + pnpDeviceId[3].toUpperCase();
                  if ({}.hasOwnProperty.call(memorySizes, deviceId)) {
                    memorySize = memorySizes[deviceId];
                  }
                }
                if (memorySize == null && pnpDeviceId[4]) {
                  const deviceId = pnpDeviceId[1].toUpperCase() + "&" + pnpDeviceId[2].toUpperCase() + "&" + pnpDeviceId[4].toUpperCase();
                  if ({}.hasOwnProperty.call(memorySizes, deviceId)) {
                    memorySize = memorySizes[deviceId];
                  }
                }
                if (memorySize == null) {
                  const deviceId = pnpDeviceId[1].toUpperCase() + "&" + pnpDeviceId[2].toUpperCase();
                  if ({}.hasOwnProperty.call(memorySizes, deviceId)) {
                    memorySize = memorySizes[deviceId];
                  }
                }
              }
              controllers.push({
                vendor: util.getValue(lines, "AdapterCompatibility", ":"),
                model: util.getValue(lines, "name", ":"),
                bus: util.getValue(lines, "PNPDeviceID", ":").startsWith("PCI") ? "PCI" : "",
                vram: (memorySize == null ? util.toInt(util.getValue(lines, "AdapterRAM", ":")) : memorySize) / 1024 / 1024,
                vramDynamic: util.getValue(lines, "VideoMemoryType", ":") === "2",
                subDeviceId
              });
              _resolutionX = util.toInt(util.getValue(lines, "CurrentHorizontalResolution", ":")) || _resolutionX;
              _resolutionY = util.toInt(util.getValue(lines, "CurrentVerticalResolution", ":")) || _resolutionY;
              _refreshRate = util.toInt(util.getValue(lines, "CurrentRefreshRate", ":")) || _refreshRate;
              _pixelDepth = util.toInt(util.getValue(lines, "CurrentBitsPerPixel", ":")) || _pixelDepth;
            }
          }
        }
        return controllers;
      }
      function parseLinesWindowsDisplaysPowershell(ssections, msections, dsections, tsections, isections) {
        let displays = [];
        let vendor = "";
        let model = "";
        let deviceID = "";
        let resolutionX = 0;
        let resolutionY = 0;
        if (dsections && dsections.length) {
          let linesDisplay = dsections[0].split("\n");
          vendor = util.getValue(linesDisplay, "MonitorManufacturer", ":");
          model = util.getValue(linesDisplay, "Name", ":");
          deviceID = util.getValue(linesDisplay, "PNPDeviceID", ":").replace(/&amp;/g, "&").toLowerCase();
          resolutionX = util.toInt(util.getValue(linesDisplay, "ScreenWidth", ":"));
          resolutionY = util.toInt(util.getValue(linesDisplay, "ScreenHeight", ":"));
        }
        for (let i = 0; i < ssections.length; i++) {
          if (ssections[i].trim() !== "") {
            ssections[i] = "BitsPerPixel " + ssections[i];
            msections[i] = "Active " + msections[i];
            if (tsections.length === 0 || tsections[i] === void 0) {
              tsections[i] = "Unknown";
            }
            let linesScreen = ssections[i].split("\n");
            let linesMonitor = msections[i].split("\n");
            let linesConnection = tsections[i].split("\n");
            const bitsPerPixel = util.getValue(linesScreen, "BitsPerPixel");
            const bounds = util.getValue(linesScreen, "Bounds").replace("{", "").replace("}", "").replace(/=/g, ":").split(",");
            const primary = util.getValue(linesScreen, "Primary");
            const sizeX = util.getValue(linesMonitor, "MaxHorizontalImageSize");
            const sizeY = util.getValue(linesMonitor, "MaxVerticalImageSize");
            const instanceName = util.getValue(linesMonitor, "InstanceName").toLowerCase();
            const videoOutputTechnology = util.getValue(linesConnection, "VideoOutputTechnology");
            const deviceName = util.getValue(linesScreen, "DeviceName");
            let displayVendor = "";
            let displayModel = "";
            isections.forEach((element) => {
              if (element.instanceId.toLowerCase().startsWith(instanceName) && vendor.startsWith("(") && model.startsWith("PnP")) {
                displayVendor = element.vendor;
                displayModel = element.model;
              }
            });
            displays.push({
              vendor: instanceName.startsWith(deviceID) && displayVendor === "" ? vendor : displayVendor,
              model: instanceName.startsWith(deviceID) && displayModel === "" ? model : displayModel,
              deviceName,
              main: primary.toLowerCase() === "true",
              builtin: videoOutputTechnology === "2147483648",
              connection: videoOutputTechnology && videoTypes[videoOutputTechnology] ? videoTypes[videoOutputTechnology] : "",
              resolutionX: util.toInt(util.getValue(bounds, "Width", ":")),
              resolutionY: util.toInt(util.getValue(bounds, "Height", ":")),
              sizeX: sizeX ? parseInt(sizeX, 10) : null,
              sizeY: sizeY ? parseInt(sizeY, 10) : null,
              pixelDepth: bitsPerPixel,
              currentResX: util.toInt(util.getValue(bounds, "Width", ":")),
              currentResY: util.toInt(util.getValue(bounds, "Height", ":")),
              positionX: util.toInt(util.getValue(bounds, "X", ":")),
              positionY: util.toInt(util.getValue(bounds, "Y", ":"))
            });
          }
        }
        if (ssections.length === 0) {
          displays.push({
            vendor,
            model,
            main: true,
            sizeX: null,
            sizeY: null,
            resolutionX,
            resolutionY,
            pixelDepth: null,
            currentResX: resolutionX,
            currentResY: resolutionY,
            positionX: 0,
            positionY: 0
          });
        }
        return displays;
      }
    }
    exports2.graphics = graphics;
  }
});

// node_modules/systeminformation/lib/filesystem.js
var require_filesystem = __commonJS({
  "node_modules/systeminformation/lib/filesystem.js"(exports2) {
    "use strict";
    var util = require_util();
    var fs2 = require("fs");
    var exec = require("child_process").exec;
    var execSync = require("child_process").execSync;
    var execPromiseSave = util.promisifySave(require("child_process").exec);
    var _platform = process.platform;
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _sunos = _platform === "sunos";
    var _fs_speed = {};
    var _disk_io = {};
    function fsSize(drive, callback) {
      if (util.isFunction(drive)) {
        callback = drive;
        drive = "";
      }
      let macOsDisks = [];
      let osMounts = [];
      function getmacOsFsType(fs3) {
        if (!fs3.startsWith("/")) {
          return "NFS";
        }
        const parts = fs3.split("/");
        const fsShort = parts[parts.length - 1];
        const macOsDisksSingle = macOsDisks.filter((item) => item.indexOf(fsShort) >= 0);
        if (macOsDisksSingle.length === 1 && macOsDisksSingle[0].indexOf("APFS") >= 0) {
          return "APFS";
        }
        return "HFS";
      }
      function isLinuxTmpFs(fs3) {
        const linuxTmpFileSystems = ["rootfs", "unionfs", "squashfs", "cramfs", "initrd", "initramfs", "devtmpfs", "tmpfs", "udev", "devfs", "specfs", "type", "appimaged"];
        let result2 = false;
        linuxTmpFileSystems.forEach((linuxFs) => {
          if (fs3.toLowerCase().indexOf(linuxFs) >= 0) {
            result2 = true;
          }
        });
        return result2;
      }
      function filterLines(stdout) {
        let lines = stdout.toString().split("\n");
        lines.shift();
        if (stdout.toString().toLowerCase().indexOf("filesystem")) {
          let removeLines = 0;
          for (let i = 0; i < lines.length; i++) {
            if (lines[i] && lines[i].toLowerCase().startsWith("filesystem")) {
              removeLines = i;
            }
          }
          for (let i = 0; i < removeLines; i++) {
            lines.shift();
          }
        }
        return lines;
      }
      function parseDf(lines) {
        let data = [];
        lines.forEach(function(line) {
          if (line !== "") {
            line = line.replace(/ +/g, " ").split(" ");
            if (line && (line[0].startsWith("/") || line[6] && line[6] === "/" || line[0].indexOf("/") > 0 || line[0].indexOf(":") === 1 || !_darwin && !isLinuxTmpFs(line[1]))) {
              const fs3 = line[0];
              const fsType = _linux || _freebsd || _openbsd || _netbsd ? line[1] : getmacOsFsType(line[0]);
              const size = parseInt(_linux || _freebsd || _openbsd || _netbsd ? line[2] : line[1]) * 1024;
              const used = parseInt(_linux || _freebsd || _openbsd || _netbsd ? line[3] : line[2]) * 1024;
              const available = parseInt(_linux || _freebsd || _openbsd || _netbsd ? line[4] : line[3]) * 1024;
              const use = parseFloat((100 * (used / (used + available))).toFixed(2));
              let rw = osMounts && Object.keys(osMounts).length > 0 ? osMounts[fs3] || false : null;
              line.splice(0, _linux || _freebsd || _openbsd || _netbsd ? 6 : 5);
              const mount = line.join(" ");
              if (!data.find((el) => el.fs === fs3 && el.type === fsType)) {
                data.push({
                  fs: fs3,
                  type: fsType,
                  size,
                  used,
                  available,
                  use,
                  mount,
                  rw
                });
              }
            }
          }
        });
        return data;
      }
      return new Promise((resolve) => {
        process.nextTick(() => {
          let data = [];
          if (_linux || _freebsd || _openbsd || _netbsd || _darwin) {
            let cmd = "";
            macOsDisks = [];
            osMounts = {};
            if (_darwin) {
              cmd = "df -kP";
              try {
                macOsDisks = execSync("diskutil list").toString().split("\n").filter((line) => {
                  return !line.startsWith("/") && line.indexOf(":") > 0;
                });
                execSync("mount").toString().split("\n").filter((line) => {
                  return line.startsWith("/");
                }).forEach((line) => {
                  osMounts[line.split(" ")[0]] = line.toLowerCase().indexOf("read-only") === -1;
                });
              } catch (e) {
                util.noop();
              }
            }
            if (_linux) {
              try {
                cmd = "export LC_ALL=C; df -lkPTx squashfs; unset LC_ALL";
                execSync("cat /proc/mounts 2>/dev/null", util.execOptsLinux).toString().split("\n").filter((line) => {
                  return line.startsWith("/");
                }).forEach((line) => {
                  osMounts[line.split(" ")[0]] = osMounts[line.split(" ")[0]] || false;
                  if (line.toLowerCase().indexOf("/snap/") === -1) {
                    osMounts[line.split(" ")[0]] = line.toLowerCase().indexOf("rw,") >= 0 || line.toLowerCase().indexOf(" rw ") >= 0;
                  }
                });
              } catch (e) {
                util.noop();
              }
            }
            if (_freebsd || _openbsd || _netbsd) {
              try {
                cmd = "df -lkPT";
                execSync("mount").toString().split("\n").forEach((line) => {
                  osMounts[line.split(" ")[0]] = line.toLowerCase().indexOf("read-only") === -1;
                });
              } catch (e) {
                util.noop();
              }
            }
            exec(cmd, { maxBuffer: 1024 * 1024 }, function(error, stdout) {
              let lines = filterLines(stdout);
              data = parseDf(lines);
              if (drive) {
                data = data.filter((item) => {
                  return item.fs.toLowerCase().indexOf(drive.toLowerCase()) >= 0 || item.mount.toLowerCase().indexOf(drive.toLowerCase()) >= 0;
                });
              }
              if ((!error || data.length) && stdout.toString().trim() !== "") {
                if (callback) {
                  callback(data);
                }
                resolve(data);
              } else {
                exec("df -kPT", { maxBuffer: 1024 * 1024 }, function(error2, stdout2) {
                  if (!error2) {
                    let lines2 = filterLines(stdout2);
                    data = parseDf(lines2);
                  }
                  if (callback) {
                    callback(data);
                  }
                  resolve(data);
                });
              }
            });
          }
          if (_sunos) {
            if (callback) {
              callback(data);
            }
            resolve(data);
          }
          if (_windows) {
            try {
              const cmd = `Get-WmiObject Win32_logicaldisk | select Access,Caption,FileSystem,FreeSpace,Size ${drive ? "| where -property Caption -eq " + drive : ""} | fl`;
              util.powerShell(cmd).then((stdout, error) => {
                if (!error) {
                  let devices = stdout.toString().split(/\n\s*\n/);
                  devices.forEach(function(device) {
                    let lines = device.split("\r\n");
                    const size = util.toInt(util.getValue(lines, "size", ":"));
                    const free = util.toInt(util.getValue(lines, "freespace", ":"));
                    const caption = util.getValue(lines, "caption", ":");
                    const rwValue = util.getValue(lines, "access", ":");
                    const rw = rwValue ? util.toInt(rwValue) !== 1 : null;
                    if (size) {
                      data.push({
                        fs: caption,
                        type: util.getValue(lines, "filesystem", ":"),
                        size,
                        used: size - free,
                        available: free,
                        use: parseFloat((100 * (size - free) / size).toFixed(2)),
                        mount: caption,
                        rw
                      });
                    }
                  });
                }
                if (callback) {
                  callback(data);
                }
                resolve(data);
              });
            } catch (e) {
              if (callback) {
                callback(data);
              }
              resolve(data);
            }
          }
        });
      });
    }
    exports2.fsSize = fsSize;
    function fsOpenFiles(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          const result2 = {
            max: null,
            allocated: null,
            available: null
          };
          if (_freebsd || _openbsd || _netbsd || _darwin) {
            let cmd = "sysctl -i kern.maxfiles kern.num_files kern.open_files";
            exec(cmd, { maxBuffer: 1024 * 1024 }, function(error, stdout) {
              if (!error) {
                let lines = stdout.toString().split("\n");
                result2.max = parseInt(util.getValue(lines, "kern.maxfiles", ":"), 10);
                result2.allocated = parseInt(util.getValue(lines, "kern.num_files", ":"), 10) || parseInt(util.getValue(lines, "kern.open_files", ":"), 10);
                result2.available = result2.max - result2.allocated;
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_linux) {
            fs2.readFile("/proc/sys/fs/file-nr", function(error, stdout) {
              if (!error) {
                let lines = stdout.toString().split("\n");
                if (lines[0]) {
                  const parts = lines[0].replace(/\s+/g, " ").split(" ");
                  if (parts.length === 3) {
                    result2.allocated = parseInt(parts[0], 10);
                    result2.available = parseInt(parts[1], 10);
                    result2.max = parseInt(parts[2], 10);
                    if (!result2.available) {
                      result2.available = result2.max - result2.allocated;
                    }
                  }
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              } else {
                fs2.readFile("/proc/sys/fs/file-max", function(error2, stdout2) {
                  if (!error2) {
                    let lines = stdout2.toString().split("\n");
                    if (lines[0]) {
                      result2.max = parseInt(lines[0], 10);
                    }
                  }
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                });
              }
            });
          }
          if (_sunos) {
            if (callback) {
              callback(null);
            }
            resolve(null);
          }
          if (_windows) {
            if (callback) {
              callback(null);
            }
            resolve(null);
          }
        });
      });
    }
    exports2.fsOpenFiles = fsOpenFiles;
    function parseBytes(s) {
      return parseInt(s.substr(s.indexOf(" (") + 2, s.indexOf(" Bytes)") - 10));
    }
    function parseDevices(lines) {
      let devices = [];
      let i = 0;
      lines.forEach((line) => {
        if (line.length > 0) {
          if (line[0] === "*") {
            i++;
          } else {
            let parts = line.split(":");
            if (parts.length > 1) {
              if (!devices[i]) {
                devices[i] = {
                  name: "",
                  identifier: "",
                  type: "disk",
                  fsType: "",
                  mount: "",
                  size: 0,
                  physical: "HDD",
                  uuid: "",
                  label: "",
                  model: "",
                  serial: "",
                  removable: false,
                  protocol: "",
                  group: "",
                  device: ""
                };
              }
              parts[0] = parts[0].trim().toUpperCase().replace(/ +/g, "");
              parts[1] = parts[1].trim();
              if ("DEVICEIDENTIFIER" === parts[0]) {
                devices[i].identifier = parts[1];
              }
              if ("DEVICENODE" === parts[0]) {
                devices[i].name = parts[1];
              }
              if ("VOLUMENAME" === parts[0]) {
                if (parts[1].indexOf("Not applicable") === -1) {
                  devices[i].label = parts[1];
                }
              }
              if ("PROTOCOL" === parts[0]) {
                devices[i].protocol = parts[1];
              }
              if ("DISKSIZE" === parts[0]) {
                devices[i].size = parseBytes(parts[1]);
              }
              if ("FILESYSTEMPERSONALITY" === parts[0]) {
                devices[i].fsType = parts[1];
              }
              if ("MOUNTPOINT" === parts[0]) {
                devices[i].mount = parts[1];
              }
              if ("VOLUMEUUID" === parts[0]) {
                devices[i].uuid = parts[1];
              }
              if ("READ-ONLYMEDIA" === parts[0] && parts[1] === "Yes") {
                devices[i].physical = "CD/DVD";
              }
              if ("SOLIDSTATE" === parts[0] && parts[1] === "Yes") {
                devices[i].physical = "SSD";
              }
              if ("VIRTUAL" === parts[0]) {
                devices[i].type = "virtual";
              }
              if ("REMOVABLEMEDIA" === parts[0]) {
                devices[i].removable = parts[1] === "Removable";
              }
              if ("PARTITIONTYPE" === parts[0]) {
                devices[i].type = "part";
              }
              if ("DEVICE/MEDIANAME" === parts[0]) {
                devices[i].model = parts[1];
              }
            }
          }
        }
      });
      return devices;
    }
    function parseBlk(lines) {
      let data = [];
      lines.filter((line) => line !== "").forEach((line) => {
        try {
          line = decodeURIComponent(line.replace(/\\x/g, "%"));
          line = line.replace(/\\/g, "\\\\");
          let disk = JSON.parse(line);
          data.push({
            "name": disk.name,
            "type": disk.type,
            "fsType": disk.fsType,
            "mount": disk.mountpoint,
            "size": parseInt(disk.size),
            "physical": disk.type === "disk" ? disk.rota === "0" ? "SSD" : "HDD" : disk.type === "rom" ? "CD/DVD" : "",
            "uuid": disk.uuid,
            "label": disk.label,
            "model": (disk.model || "").trim(),
            "serial": disk.serial,
            "removable": disk.rm === "1",
            "protocol": disk.tran,
            "group": disk.group || ""
          });
        } catch (e) {
          util.noop();
        }
      });
      data = util.unique(data);
      data = util.sortByKey(data, ["type", "name"]);
      return data;
    }
    function decodeMdabmData(lines) {
      const raid = util.getValue(lines, "md_level", "=");
      const label = util.getValue(lines, "md_name", "=");
      const uuid = util.getValue(lines, "md_uuid", "=");
      const members = [];
      lines.forEach((line) => {
        if (line.toLowerCase().startsWith("md_device_dev") && line.toLowerCase().indexOf("/dev/") > 0) {
          members.push(line.split("/dev/")[1]);
        }
      });
      return {
        raid,
        label,
        uuid,
        members
      };
    }
    function raidMatchLinux(data) {
      let result2 = data;
      try {
        data.forEach((element) => {
          if (element.type.startsWith("raid")) {
            const lines = execSync(`mdadm --export --detail /dev/${element.name}`, util.execOptsLinux).toString().split("\n");
            const mdData = decodeMdabmData(lines);
            element.label = mdData.label;
            element.uuid = mdData.uuid;
            if (mdData.members && mdData.members.length && mdData.raid === element.type) {
              result2 = result2.map((blockdevice) => {
                if (blockdevice.fsType === "linux_raid_member" && mdData.members.indexOf(blockdevice.name) >= 0) {
                  blockdevice.group = element.name;
                }
                return blockdevice;
              });
            }
          }
        });
      } catch (e) {
        util.noop();
      }
      return result2;
    }
    function getDevicesLinux(data) {
      const result2 = [];
      data.forEach((element) => {
        if (element.type.startsWith("disk")) {
          result2.push(element.name);
        }
      });
      return result2;
    }
    function matchDevicesLinux(data) {
      let result2 = data;
      try {
        const devices = getDevicesLinux(data);
        result2 = result2.map((blockdevice) => {
          if (blockdevice.type.startsWith("part") || blockdevice.type.startsWith("disk")) {
            devices.forEach((element) => {
              if (blockdevice.name.startsWith(element)) {
                blockdevice.device = "/dev/" + element;
              }
            });
          }
          return blockdevice;
        });
      } catch (e) {
        util.noop();
      }
      return result2;
    }
    function getDevicesMac(data) {
      const result2 = [];
      data.forEach((element) => {
        if (element.type.startsWith("disk")) {
          result2.push({ name: element.name, model: element.model, device: element.name });
        }
        if (element.type.startsWith("virtual")) {
          let device = "";
          result2.forEach((e) => {
            if (e.model === element.model) {
              device = e.device;
            }
          });
          if (device) {
            result2.push({ name: element.name, model: element.model, device });
          }
        }
      });
      return result2;
    }
    function matchDevicesMac(data) {
      let result2 = data;
      try {
        const devices = getDevicesMac(data);
        result2 = result2.map((blockdevice) => {
          if (blockdevice.type.startsWith("part") || blockdevice.type.startsWith("disk") || blockdevice.type.startsWith("virtual")) {
            devices.forEach((element) => {
              if (blockdevice.name.startsWith(element.name)) {
                blockdevice.device = element.device;
              }
            });
          }
          return blockdevice;
        });
      } catch (e) {
        util.noop();
      }
      return result2;
    }
    function getDevicesWin(diskDrives) {
      const result2 = [];
      diskDrives.forEach((element) => {
        const lines = element.split("\r\n");
        const device = util.getValue(lines, "DeviceID", ":");
        let partitions = element.split("@{DeviceID=");
        if (partitions.length > 1) {
          partitions = partitions.slice(1);
          partitions.forEach((partition) => {
            result2.push({ name: partition.split(";")[0].toUpperCase(), device });
          });
        }
      });
      return result2;
    }
    function matchDevicesWin(data, diskDrives) {
      const devices = getDevicesWin(diskDrives);
      data.map((element) => {
        const filteresDevices = devices.filter((e) => {
          return e.name === element.name.toUpperCase();
        });
        if (filteresDevices.length > 0) {
          element.device = filteresDevices[0].device;
        }
        return element;
      });
      return data;
    }
    function blkStdoutToObject(stdout) {
      return stdout.toString().replace(/NAME=/g, '{"name":').replace(/FSTYPE=/g, ',"fsType":').replace(/TYPE=/g, ',"type":').replace(/SIZE=/g, ',"size":').replace(/MOUNTPOINT=/g, ',"mountpoint":').replace(/UUID=/g, ',"uuid":').replace(/ROTA=/g, ',"rota":').replace(/RO=/g, ',"ro":').replace(/RM=/g, ',"rm":').replace(/TRAN=/g, ',"tran":').replace(/SERIAL=/g, ',"serial":').replace(/LABEL=/g, ',"label":').replace(/MODEL=/g, ',"model":').replace(/OWNER=/g, ',"owner":').replace(/GROUP=/g, ',"group":').replace(/\n/g, "}\n");
    }
    function blockDevices(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let data = [];
          if (_linux) {
            const procLsblk1 = exec("lsblk -bPo NAME,TYPE,SIZE,FSTYPE,MOUNTPOINT,UUID,ROTA,RO,RM,TRAN,SERIAL,LABEL,MODEL,OWNER 2>/dev/null", { maxBuffer: 1024 * 1024 }, function(error, stdout) {
              if (!error) {
                let lines = blkStdoutToObject(stdout).split("\n");
                data = parseBlk(lines);
                data = raidMatchLinux(data);
                data = matchDevicesLinux(data);
                if (callback) {
                  callback(data);
                }
                resolve(data);
              } else {
                const procLsblk2 = exec("lsblk -bPo NAME,TYPE,SIZE,FSTYPE,MOUNTPOINT,UUID,ROTA,RO,RM,LABEL,MODEL,OWNER 2>/dev/null", { maxBuffer: 1024 * 1024 }, function(error2, stdout2) {
                  if (!error2) {
                    let lines = blkStdoutToObject(stdout2).split("\n");
                    data = parseBlk(lines);
                    data = raidMatchLinux(data);
                  }
                  if (callback) {
                    callback(data);
                  }
                  resolve(data);
                });
                procLsblk2.on("error", function() {
                  if (callback) {
                    callback(data);
                  }
                  resolve(data);
                });
              }
            });
            procLsblk1.on("error", function() {
              if (callback) {
                callback(data);
              }
              resolve(data);
            });
          }
          if (_darwin) {
            const procDskutil = exec("diskutil info -all", { maxBuffer: 1024 * 1024 }, function(error, stdout) {
              if (!error) {
                let lines = stdout.toString().split("\n");
                data = parseDevices(lines);
                data = matchDevicesMac(data);
              }
              if (callback) {
                callback(data);
              }
              resolve(data);
            });
            procDskutil.on("error", function() {
              if (callback) {
                callback(data);
              }
              resolve(data);
            });
          }
          if (_sunos) {
            if (callback) {
              callback(data);
            }
            resolve(data);
          }
          if (_windows) {
            let drivetypes = ["Unknown", "NoRoot", "Removable", "Local", "Network", "CD/DVD", "RAM"];
            try {
              const workload = [];
              workload.push(util.powerShell("Get-CimInstance -ClassName Win32_LogicalDisk | select Caption,DriveType,Name,FileSystem,Size,VolumeSerialNumber,VolumeName | fl"));
              workload.push(util.powerShell("Get-WmiObject -Class Win32_diskdrive | Select-Object -Property PNPDeviceId,DeviceID, Model, Size, @{L='Partitions'; E={$_.GetRelated('Win32_DiskPartition').GetRelated('Win32_LogicalDisk') | Select-Object -Property DeviceID, VolumeName, Size, FreeSpace}} | fl"));
              util.promiseAll(
                workload
              ).then((res) => {
                let logicalDisks = res.results[0].toString().split(/\n\s*\n/);
                let diskDrives = res.results[1].toString().split(/\n\s*\n/);
                logicalDisks.forEach(function(device) {
                  let lines = device.split("\r\n");
                  let drivetype = util.getValue(lines, "drivetype", ":");
                  if (drivetype) {
                    data.push({
                      name: util.getValue(lines, "name", ":"),
                      identifier: util.getValue(lines, "caption", ":"),
                      type: "disk",
                      fsType: util.getValue(lines, "filesystem", ":").toLowerCase(),
                      mount: util.getValue(lines, "caption", ":"),
                      size: util.getValue(lines, "size", ":"),
                      physical: drivetype >= 0 && drivetype <= 6 ? drivetypes[drivetype] : drivetypes[0],
                      uuid: util.getValue(lines, "volumeserialnumber", ":"),
                      label: util.getValue(lines, "volumename", ":"),
                      model: "",
                      serial: util.getValue(lines, "volumeserialnumber", ":"),
                      removable: drivetype === "2",
                      protocol: "",
                      group: "",
                      device: ""
                    });
                  }
                });
                data = matchDevicesWin(data, diskDrives);
                if (callback) {
                  callback(data);
                }
                resolve(data);
              });
            } catch (e) {
              if (callback) {
                callback(data);
              }
              resolve(data);
            }
          }
          if (_freebsd || _openbsd || _netbsd) {
            if (callback) {
              callback(null);
            }
            resolve(null);
          }
        });
      });
    }
    exports2.blockDevices = blockDevices;
    function calcFsSpeed(rx, wx) {
      let result2 = {
        rx: 0,
        wx: 0,
        tx: 0,
        rx_sec: null,
        wx_sec: null,
        tx_sec: null,
        ms: 0
      };
      if (_fs_speed && _fs_speed.ms) {
        result2.rx = rx;
        result2.wx = wx;
        result2.tx = result2.rx + result2.wx;
        result2.ms = Date.now() - _fs_speed.ms;
        result2.rx_sec = (result2.rx - _fs_speed.bytes_read) / (result2.ms / 1e3);
        result2.wx_sec = (result2.wx - _fs_speed.bytes_write) / (result2.ms / 1e3);
        result2.tx_sec = result2.rx_sec + result2.wx_sec;
        _fs_speed.rx_sec = result2.rx_sec;
        _fs_speed.wx_sec = result2.wx_sec;
        _fs_speed.tx_sec = result2.tx_sec;
        _fs_speed.bytes_read = result2.rx;
        _fs_speed.bytes_write = result2.wx;
        _fs_speed.bytes_overall = result2.rx + result2.wx;
        _fs_speed.ms = Date.now();
        _fs_speed.last_ms = result2.ms;
      } else {
        result2.rx = rx;
        result2.wx = wx;
        result2.tx = result2.rx + result2.wx;
        _fs_speed.rx_sec = null;
        _fs_speed.wx_sec = null;
        _fs_speed.tx_sec = null;
        _fs_speed.bytes_read = result2.rx;
        _fs_speed.bytes_write = result2.wx;
        _fs_speed.bytes_overall = result2.rx + result2.wx;
        _fs_speed.ms = Date.now();
        _fs_speed.last_ms = 0;
      }
      return result2;
    }
    function fsStats(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          if (_windows || _freebsd || _openbsd || _netbsd || _sunos) {
            return resolve(null);
          }
          let result2 = {
            rx: 0,
            wx: 0,
            tx: 0,
            rx_sec: null,
            wx_sec: null,
            tx_sec: null,
            ms: 0
          };
          let rx = 0;
          let wx = 0;
          if (_fs_speed && !_fs_speed.ms || _fs_speed && _fs_speed.ms && Date.now() - _fs_speed.ms >= 500) {
            if (_linux) {
              const procLsblk = exec("lsblk -r 2>/dev/null | grep /", { maxBuffer: 1024 * 1024 }, function(error, stdout) {
                if (!error) {
                  let lines = stdout.toString().split("\n");
                  let fs_filter = [];
                  lines.forEach(function(line) {
                    if (line !== "") {
                      line = line.trim().split(" ");
                      if (fs_filter.indexOf(line[0]) === -1) {
                        fs_filter.push(line[0]);
                      }
                    }
                  });
                  let output = fs_filter.join("|");
                  const procCat = exec('cat /proc/diskstats | egrep "' + output + '"', { maxBuffer: 1024 * 1024 }, function(error2, stdout2) {
                    if (!error2) {
                      let lines2 = stdout2.toString().split("\n");
                      lines2.forEach(function(line) {
                        line = line.trim();
                        if (line !== "") {
                          line = line.replace(/ +/g, " ").split(" ");
                          rx += parseInt(line[5]) * 512;
                          wx += parseInt(line[9]) * 512;
                        }
                      });
                      result2 = calcFsSpeed(rx, wx);
                    }
                    if (callback) {
                      callback(result2);
                    }
                    resolve(result2);
                  });
                  procCat.on("error", function() {
                    if (callback) {
                      callback(result2);
                    }
                    resolve(result2);
                  });
                } else {
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                }
              });
              procLsblk.on("error", function() {
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            }
            if (_darwin) {
              const procIoreg = exec('ioreg -c IOBlockStorageDriver -k Statistics -r -w0 | sed -n "/IOBlockStorageDriver/,/Statistics/p" | grep "Statistics" | tr -cd "01234567890,\n"', { maxBuffer: 1024 * 1024 }, function(error, stdout) {
                if (!error) {
                  let lines = stdout.toString().split("\n");
                  lines.forEach(function(line) {
                    line = line.trim();
                    if (line !== "") {
                      line = line.split(",");
                      rx += parseInt(line[2]);
                      wx += parseInt(line[9]);
                    }
                  });
                  result2 = calcFsSpeed(rx, wx);
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
              procIoreg.on("error", function() {
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            }
          } else {
            result2.ms = _fs_speed.last_ms;
            result2.rx = _fs_speed.bytes_read;
            result2.wx = _fs_speed.bytes_write;
            result2.tx = _fs_speed.bytes_read + _fs_speed.bytes_write;
            result2.rx_sec = _fs_speed.rx_sec;
            result2.wx_sec = _fs_speed.wx_sec;
            result2.tx_sec = _fs_speed.tx_sec;
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
        });
      });
    }
    exports2.fsStats = fsStats;
    function calcDiskIO(rIO, wIO, rWaitTime, wWaitTime, tWaitTime) {
      let result2 = {
        rIO: 0,
        wIO: 0,
        tIO: 0,
        rIO_sec: null,
        wIO_sec: null,
        tIO_sec: null,
        rWaitTime: 0,
        wWaitTime: 0,
        tWaitTime: 0,
        rWaitPercent: null,
        wWaitPercent: null,
        tWaitPercent: null,
        ms: 0
      };
      if (_disk_io && _disk_io.ms) {
        result2.rIO = rIO;
        result2.wIO = wIO;
        result2.tIO = rIO + wIO;
        result2.ms = Date.now() - _disk_io.ms;
        result2.rIO_sec = (result2.rIO - _disk_io.rIO) / (result2.ms / 1e3);
        result2.wIO_sec = (result2.wIO - _disk_io.wIO) / (result2.ms / 1e3);
        result2.tIO_sec = result2.rIO_sec + result2.wIO_sec;
        result2.rWaitTime = rWaitTime;
        result2.wWaitTime = wWaitTime;
        result2.tWaitTime = tWaitTime;
        result2.rWaitPercent = (result2.rWaitTime - _disk_io.rWaitTime) * 100 / result2.ms;
        result2.wWaitPercent = (result2.wWaitTime - _disk_io.wWaitTime) * 100 / result2.ms;
        result2.tWaitPercent = (result2.tWaitTime - _disk_io.tWaitTime) * 100 / result2.ms;
        _disk_io.rIO = rIO;
        _disk_io.wIO = wIO;
        _disk_io.rIO_sec = result2.rIO_sec;
        _disk_io.wIO_sec = result2.wIO_sec;
        _disk_io.tIO_sec = result2.tIO_sec;
        _disk_io.rWaitTime = rWaitTime;
        _disk_io.wWaitTime = wWaitTime;
        _disk_io.tWaitTime = tWaitTime;
        _disk_io.rWaitPercent = result2.rWaitPercent;
        _disk_io.wWaitPercent = result2.wWaitPercent;
        _disk_io.tWaitPercent = result2.tWaitPercent;
        _disk_io.last_ms = result2.ms;
        _disk_io.ms = Date.now();
      } else {
        result2.rIO = rIO;
        result2.wIO = wIO;
        result2.tIO = rIO + wIO;
        result2.rWaitTime = rWaitTime;
        result2.wWaitTime = wWaitTime;
        result2.tWaitTime = tWaitTime;
        _disk_io.rIO = rIO;
        _disk_io.wIO = wIO;
        _disk_io.rIO_sec = null;
        _disk_io.wIO_sec = null;
        _disk_io.tIO_sec = null;
        _disk_io.rWaitTime = rWaitTime;
        _disk_io.wWaitTime = wWaitTime;
        _disk_io.tWaitTime = tWaitTime;
        _disk_io.rWaitPercent = null;
        _disk_io.wWaitPercent = null;
        _disk_io.tWaitPercent = null;
        _disk_io.last_ms = 0;
        _disk_io.ms = Date.now();
      }
      return result2;
    }
    function disksIO(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          if (_windows) {
            return resolve(null);
          }
          if (_sunos) {
            return resolve(null);
          }
          let result2 = {
            rIO: 0,
            wIO: 0,
            tIO: 0,
            rIO_sec: null,
            wIO_sec: null,
            tIO_sec: null,
            rWaitTime: 0,
            wWaitTime: 0,
            tWaitTime: 0,
            rWaitPercent: null,
            wWaitPercent: null,
            tWaitPercent: null,
            ms: 0
          };
          let rIO = 0;
          let wIO = 0;
          let rWaitTime = 0;
          let wWaitTime = 0;
          let tWaitTime = 0;
          if (_disk_io && !_disk_io.ms || _disk_io && _disk_io.ms && Date.now() - _disk_io.ms >= 500) {
            if (_linux || _freebsd || _openbsd || _netbsd) {
              let cmd = 'for mount in `lsblk 2>/dev/null | grep " disk " | sed "s/[\u2502\u2514\u2500\u251C]//g" | awk \'{$1=$1};1\' | cut -d " " -f 1 | sort -u`; do cat /sys/block/$mount/stat | sed -r "s/ +/;/g" | sed -r "s/^;//"; done';
              exec(cmd, { maxBuffer: 1024 * 1024 }, function(error, stdout) {
                if (!error) {
                  let lines = stdout.split("\n");
                  lines.forEach(function(line) {
                    if (!line) {
                      return;
                    }
                    let stats = line.split(";");
                    rIO += parseInt(stats[0]);
                    wIO += parseInt(stats[4]);
                    rWaitTime += parseInt(stats[3]);
                    wWaitTime += parseInt(stats[7]);
                    tWaitTime += parseInt(stats[10]);
                  });
                  result2 = calcDiskIO(rIO, wIO, rWaitTime, wWaitTime, tWaitTime);
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                } else {
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                }
              });
            }
            if (_darwin) {
              exec('ioreg -c IOBlockStorageDriver -k Statistics -r -w0 | sed -n "/IOBlockStorageDriver/,/Statistics/p" | grep "Statistics" | tr -cd "01234567890,\n"', { maxBuffer: 1024 * 1024 }, function(error, stdout) {
                if (!error) {
                  let lines = stdout.toString().split("\n");
                  lines.forEach(function(line) {
                    line = line.trim();
                    if (line !== "") {
                      line = line.split(",");
                      rIO += parseInt(line[10]);
                      wIO += parseInt(line[0]);
                    }
                  });
                  result2 = calcDiskIO(rIO, wIO, rWaitTime, wWaitTime, tWaitTime);
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            }
          } else {
            result2.rIO = _disk_io.rIO;
            result2.wIO = _disk_io.wIO;
            result2.tIO = _disk_io.rIO + _disk_io.wIO;
            result2.ms = _disk_io.last_ms;
            result2.rIO_sec = _disk_io.rIO_sec;
            result2.wIO_sec = _disk_io.wIO_sec;
            result2.tIO_sec = _disk_io.tIO_sec;
            result2.rWaitTime = _disk_io.rWaitTime;
            result2.wWaitTime = _disk_io.wWaitTime;
            result2.tWaitTime = _disk_io.tWaitTime;
            result2.rWaitPercent = _disk_io.rWaitPercent;
            result2.wWaitPercent = _disk_io.wWaitPercent;
            result2.tWaitPercent = _disk_io.tWaitPercent;
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
        });
      });
    }
    exports2.disksIO = disksIO;
    function diskLayout(callback) {
      function getVendorFromModel(model) {
        const diskManufacturers = [
          { pattern: "WESTERN.*", manufacturer: "Western Digital" },
          { pattern: "^WDC.*", manufacturer: "Western Digital" },
          { pattern: "WD.*", manufacturer: "Western Digital" },
          { pattern: "TOSHIBA.*", manufacturer: "Toshiba" },
          { pattern: "HITACHI.*", manufacturer: "Hitachi" },
          { pattern: "^IC.*", manufacturer: "Hitachi" },
          { pattern: "^HTS.*", manufacturer: "Hitachi" },
          { pattern: "SANDISK.*", manufacturer: "SanDisk" },
          { pattern: "KINGSTON.*", manufacturer: "Kingston Technology" },
          { pattern: "^SONY.*", manufacturer: "Sony" },
          { pattern: "TRANSCEND.*", manufacturer: "Transcend" },
          { pattern: "SAMSUNG.*", manufacturer: "Samsung" },
          { pattern: "^ST(?!I\\ ).*", manufacturer: "Seagate" },
          { pattern: "^STI\\ .*", manufacturer: "SimpleTech" },
          { pattern: "^D...-.*", manufacturer: "IBM" },
          { pattern: "^IBM.*", manufacturer: "IBM" },
          { pattern: "^FUJITSU.*", manufacturer: "Fujitsu" },
          { pattern: "^MP.*", manufacturer: "Fujitsu" },
          { pattern: "^MK.*", manufacturer: "Toshiba" },
          { pattern: "MAXTO.*", manufacturer: "Maxtor" },
          { pattern: "PIONEER.*", manufacturer: "Pioneer" },
          { pattern: "PHILIPS.*", manufacturer: "Philips" },
          { pattern: "QUANTUM.*", manufacturer: "Quantum Technology" },
          { pattern: "FIREBALL.*", manufacturer: "Quantum Technology" },
          { pattern: "^VBOX.*", manufacturer: "VirtualBox" },
          { pattern: "CORSAIR.*", manufacturer: "Corsair Components" },
          { pattern: "CRUCIAL.*", manufacturer: "Crucial" },
          { pattern: "ECM.*", manufacturer: "ECM" },
          { pattern: "INTEL.*", manufacturer: "INTEL" },
          { pattern: "EVO.*", manufacturer: "Samsung" },
          { pattern: "APPLE.*", manufacturer: "Apple" }
        ];
        let result2 = "";
        if (model) {
          model = model.toUpperCase();
          diskManufacturers.forEach((manufacturer) => {
            const re = RegExp(manufacturer.pattern);
            if (re.test(model)) {
              result2 = manufacturer.manufacturer;
            }
          });
        }
        return result2;
      }
      return new Promise((resolve) => {
        process.nextTick(() => {
          const commitResult = (res) => {
            for (let i = 0; i < res.length; i++) {
              delete res[i].BSDName;
            }
            if (callback) {
              callback(res);
            }
            resolve(res);
          };
          let result2 = [];
          let cmd = "";
          if (_linux) {
            let cmdFullSmart = "";
            exec("export LC_ALL=C; lsblk -ablJO 2>/dev/null; unset LC_ALL", { maxBuffer: 1024 * 1024 }, function(error, stdout) {
              if (!error) {
                try {
                  const out = stdout.toString().trim();
                  let devices = [];
                  try {
                    const outJSON = JSON.parse(out);
                    if (outJSON && {}.hasOwnProperty.call(outJSON, "blockdevices")) {
                      devices = outJSON.blockdevices.filter((item) => {
                        return item.type === "disk" && item.size > 0 && (item.model !== null || item.mountpoint === null && item.label === null && item.fstype === null && item.parttype === null && item.path && item.path.indexOf("/ram") !== 0 && item.path.indexOf("/loop") !== 0 && item["disc-max"] && item["disc-max"] !== 0);
                      });
                    }
                  } catch (e) {
                    try {
                      const out2 = execSync("export LC_ALL=C; lsblk -bPo NAME,TYPE,SIZE,FSTYPE,MOUNTPOINT,UUID,ROTA,RO,RM,LABEL,MODEL,OWNER,GROUP 2>/dev/null; unset LC_ALL", util.execOptsLinux).toString();
                      let lines = blkStdoutToObject(out2).split("\n");
                      const data = parseBlk(lines);
                      devices = data.filter((item) => {
                        return item.type === "disk" && item.size > 0 && (item.model !== null && item.model !== "" || item.mount === "" && item.label === "" && item.fsType === "");
                      });
                    } catch (e2) {
                      util.noop();
                    }
                  }
                  devices.forEach((device) => {
                    let mediumType = "";
                    const BSDName = "/dev/" + device.name;
                    const logical = device.name;
                    try {
                      mediumType = execSync("cat /sys/block/" + logical + "/queue/rotational 2>/dev/null", util.execOptsLinux).toString().split("\n")[0];
                    } catch (e) {
                      util.noop();
                    }
                    let interfaceType = device.tran ? device.tran.toUpperCase().trim() : "";
                    if (interfaceType === "NVME") {
                      mediumType = "2";
                      interfaceType = "PCIe";
                    }
                    result2.push({
                      device: BSDName,
                      type: mediumType === "0" ? "SSD" : mediumType === "1" ? "HD" : mediumType === "2" ? "NVMe" : device.model && device.model.indexOf("SSD") > -1 ? "SSD" : device.model && device.model.indexOf("NVM") > -1 ? "NVMe" : "HD",
                      name: device.model || "",
                      vendor: getVendorFromModel(device.model) || (device.vendor ? device.vendor.trim() : ""),
                      size: device.size || 0,
                      bytesPerSector: null,
                      totalCylinders: null,
                      totalHeads: null,
                      totalSectors: null,
                      totalTracks: null,
                      tracksPerCylinder: null,
                      sectorsPerTrack: null,
                      firmwareRevision: device.rev ? device.rev.trim() : "",
                      serialNum: device.serial ? device.serial.trim() : "",
                      interfaceType,
                      smartStatus: "unknown",
                      temperature: null,
                      BSDName
                    });
                    cmd += `printf "
${BSDName}|"; smartctl -H ${BSDName} | grep overall;`;
                    cmdFullSmart += `${cmdFullSmart ? 'printf ",";' : ""}smartctl -a -j ${BSDName};`;
                  });
                } catch (e) {
                  util.noop();
                }
              }
              if (cmdFullSmart) {
                exec(cmdFullSmart, { maxBuffer: 1024 * 1024 }, function(error2, stdout2) {
                  try {
                    const data = JSON.parse(`[${stdout2}]`);
                    data.forEach((disk) => {
                      const diskBSDName = disk.smartctl.argv[disk.smartctl.argv.length - 1];
                      for (let i = 0; i < result2.length; i++) {
                        if (result2[i].BSDName === diskBSDName) {
                          result2[i].smartStatus = disk.smart_status.passed ? "Ok" : disk.smart_status.passed === false ? "Predicted Failure" : "unknown";
                          if (disk.temperature && disk.temperature.current) {
                            result2[i].temperature = disk.temperature.current;
                          }
                          result2[i].smartData = disk;
                        }
                      }
                    });
                    commitResult(result2);
                  } catch (e) {
                    if (cmd) {
                      cmd = cmd + 'printf "\n"';
                      exec(cmd, { maxBuffer: 1024 * 1024 }, function(error3, stdout3) {
                        let lines = stdout3.toString().split("\n");
                        lines.forEach((line) => {
                          if (line) {
                            let parts = line.split("|");
                            if (parts.length === 2) {
                              let BSDName = parts[0];
                              parts[1] = parts[1].trim();
                              let parts2 = parts[1].split(":");
                              if (parts2.length === 2) {
                                parts2[1] = parts2[1].trim();
                                let status = parts2[1].toLowerCase();
                                for (let i = 0; i < result2.length; i++) {
                                  if (result2[i].BSDName === BSDName) {
                                    result2[i].smartStatus = status === "passed" ? "Ok" : status === "failed!" ? "Predicted Failure" : "unknown";
                                  }
                                }
                              }
                            }
                          }
                        });
                        commitResult(result2);
                      });
                    } else {
                      commitResult(result2);
                    }
                  }
                });
              } else {
                commitResult(result2);
              }
            });
          }
          if (_freebsd || _openbsd || _netbsd) {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
          if (_sunos) {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
          if (_darwin) {
            exec("system_profiler SPSerialATADataType SPNVMeDataType SPUSBDataType", { maxBuffer: 1024 * 1024 }, function(error, stdout) {
              if (!error) {
                let lines = stdout.toString().split("\n");
                let linesSATA = [];
                let linesNVMe = [];
                let linesUSB = [];
                let dataType = "SATA";
                lines.forEach((line) => {
                  if (line === "NVMExpress:") {
                    dataType = "NVMe";
                  } else if (line === "USB:") {
                    dataType = "USB";
                  } else if (line === "SATA/SATA Express:") {
                    dataType = "SATA";
                  } else if (dataType === "SATA") {
                    linesSATA.push(line);
                  } else if (dataType === "NVMe") {
                    linesNVMe.push(line);
                  } else if (dataType === "USB") {
                    linesUSB.push(line);
                  }
                });
                try {
                  let devices = linesSATA.join("\n").split(" Physical Interconnect: ");
                  devices.shift();
                  devices.forEach(function(device) {
                    device = "InterfaceType: " + device;
                    let lines2 = device.split("\n");
                    const mediumType = util.getValue(lines2, "Medium Type", ":", true).trim();
                    const sizeStr = util.getValue(lines2, "capacity", ":", true).trim();
                    const BSDName = util.getValue(lines2, "BSD Name", ":", true).trim();
                    if (sizeStr) {
                      let sizeValue = 0;
                      if (sizeStr.indexOf("(") >= 0) {
                        sizeValue = parseInt(sizeStr.match(/\(([^)]+)\)/)[1].replace(/\./g, "").replace(/,/g, "").replace(/\s/g, ""));
                      }
                      if (!sizeValue) {
                        sizeValue = parseInt(sizeStr);
                      }
                      if (sizeValue) {
                        const smartStatusString = util.getValue(lines2, "S.M.A.R.T. status", ":", true).trim().toLowerCase();
                        result2.push({
                          device: BSDName,
                          type: mediumType.startsWith("Solid") ? "SSD" : "HD",
                          name: util.getValue(lines2, "Model", ":", true).trim(),
                          vendor: getVendorFromModel(util.getValue(lines2, "Model", ":", true).trim()) || util.getValue(lines2, "Manufacturer", ":", true),
                          size: sizeValue,
                          bytesPerSector: null,
                          totalCylinders: null,
                          totalHeads: null,
                          totalSectors: null,
                          totalTracks: null,
                          tracksPerCylinder: null,
                          sectorsPerTrack: null,
                          firmwareRevision: util.getValue(lines2, "Revision", ":", true).trim(),
                          serialNum: util.getValue(lines2, "Serial Number", ":", true).trim(),
                          interfaceType: util.getValue(lines2, "InterfaceType", ":", true).trim(),
                          smartStatus: smartStatusString === "verified" ? "OK" : smartStatusString || "unknown",
                          temperature: null,
                          BSDName
                        });
                        cmd = cmd + 'printf "\n' + BSDName + '|"; diskutil info /dev/' + BSDName + " | grep SMART;";
                      }
                    }
                  });
                } catch (e) {
                  util.noop();
                }
                try {
                  let devices = linesNVMe.join("\n").split("\n\n          Capacity:");
                  devices.shift();
                  devices.forEach(function(device) {
                    device = "!Capacity: " + device;
                    let lines2 = device.split("\n");
                    const linkWidth = util.getValue(lines2, "link width", ":", true).trim();
                    const sizeStr = util.getValue(lines2, "!capacity", ":", true).trim();
                    const BSDName = util.getValue(lines2, "BSD Name", ":", true).trim();
                    if (sizeStr) {
                      let sizeValue = 0;
                      if (sizeStr.indexOf("(") >= 0) {
                        sizeValue = parseInt(sizeStr.match(/\(([^)]+)\)/)[1].replace(/\./g, "").replace(/,/g, "").replace(/\s/g, ""));
                      }
                      if (!sizeValue) {
                        sizeValue = parseInt(sizeStr);
                      }
                      if (sizeValue) {
                        const smartStatusString = util.getValue(lines2, "S.M.A.R.T. status", ":", true).trim().toLowerCase();
                        result2.push({
                          device: BSDName,
                          type: "NVMe",
                          name: util.getValue(lines2, "Model", ":", true).trim(),
                          vendor: getVendorFromModel(util.getValue(lines2, "Model", ":", true).trim()),
                          size: sizeValue,
                          bytesPerSector: null,
                          totalCylinders: null,
                          totalHeads: null,
                          totalSectors: null,
                          totalTracks: null,
                          tracksPerCylinder: null,
                          sectorsPerTrack: null,
                          firmwareRevision: util.getValue(lines2, "Revision", ":", true).trim(),
                          serialNum: util.getValue(lines2, "Serial Number", ":", true).trim(),
                          interfaceType: ("PCIe " + linkWidth).trim(),
                          smartStatus: smartStatusString === "verified" ? "OK" : smartStatusString || "unknown",
                          temperature: null,
                          BSDName
                        });
                        cmd = cmd + 'printf "\n' + BSDName + '|"; diskutil info /dev/' + BSDName + " | grep SMART;";
                      }
                    }
                  });
                } catch (e) {
                  util.noop();
                }
                try {
                  let devices = linesUSB.join("\n").replaceAll("Media:\n ", "Model:").split("\n\n          Product ID:");
                  devices.shift();
                  devices.forEach(function(device) {
                    let lines2 = device.split("\n");
                    const sizeStr = util.getValue(lines2, "Capacity", ":", true).trim();
                    const BSDName = util.getValue(lines2, "BSD Name", ":", true).trim();
                    if (sizeStr) {
                      let sizeValue = 0;
                      if (sizeStr.indexOf("(") >= 0) {
                        sizeValue = parseInt(sizeStr.match(/\(([^)]+)\)/)[1].replace(/\./g, "").replace(/,/g, "").replace(/\s/g, ""));
                      }
                      if (!sizeValue) {
                        sizeValue = parseInt(sizeStr);
                      }
                      if (sizeValue) {
                        const smartStatusString = util.getValue(lines2, "S.M.A.R.T. status", ":", true).trim().toLowerCase();
                        result2.push({
                          device: BSDName,
                          type: "USB",
                          name: util.getValue(lines2, "Model", ":", true).trim().replaceAll(":", ""),
                          vendor: getVendorFromModel(util.getValue(lines2, "Model", ":", true).trim()),
                          size: sizeValue,
                          bytesPerSector: null,
                          totalCylinders: null,
                          totalHeads: null,
                          totalSectors: null,
                          totalTracks: null,
                          tracksPerCylinder: null,
                          sectorsPerTrack: null,
                          firmwareRevision: util.getValue(lines2, "Revision", ":", true).trim(),
                          serialNum: util.getValue(lines2, "Serial Number", ":", true).trim(),
                          interfaceType: "USB",
                          smartStatus: smartStatusString === "verified" ? "OK" : smartStatusString || "unknown",
                          temperature: null,
                          BSDName
                        });
                        cmd = cmd + 'printf "\n' + BSDName + '|"; diskutil info /dev/' + BSDName + " | grep SMART;";
                      }
                    }
                  });
                } catch (e) {
                  util.noop();
                }
                if (cmd) {
                  cmd = cmd + 'printf "\n"';
                  exec(cmd, { maxBuffer: 1024 * 1024 }, function(error2, stdout2) {
                    let lines2 = stdout2.toString().split("\n");
                    lines2.forEach((line) => {
                      if (line) {
                        let parts = line.split("|");
                        if (parts.length === 2) {
                          let BSDName = parts[0];
                          parts[1] = parts[1].trim();
                          let parts2 = parts[1].split(":");
                          if (parts2.length === 2) {
                            parts2[1] = parts2[1].trim();
                            let status = parts2[1].toLowerCase();
                            for (let i = 0; i < result2.length; i++) {
                              if (result2[i].BSDName === BSDName) {
                                result2[i].smartStatus = status === "not supported" ? "not supported" : status === "verified" ? "Ok" : status === "failing" ? "Predicted Failure" : "unknown";
                              }
                            }
                          }
                        }
                      }
                    });
                    for (let i = 0; i < result2.length; i++) {
                      delete result2[i].BSDName;
                    }
                    if (callback) {
                      callback(result2);
                    }
                    resolve(result2);
                  });
                } else {
                  for (let i = 0; i < result2.length; i++) {
                    delete result2[i].BSDName;
                  }
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                }
              }
            });
          }
          if (_windows) {
            try {
              const workload = [];
              workload.push(util.powerShell("Get-CimInstance Win32_DiskDrive | select Caption,Size,Status,PNPDeviceId,DeviceId,BytesPerSector,TotalCylinders,TotalHeads,TotalSectors,TotalTracks,TracksPerCylinder,SectorsPerTrack,FirmwareRevision,SerialNumber,InterfaceType | fl"));
              workload.push(util.powerShell("Get-PhysicalDisk | select BusType,MediaType,FriendlyName,Model,SerialNumber,Size | fl"));
              if (util.smartMonToolsInstalled()) {
                try {
                  const smartDev = JSON.parse(execSync("smartctl --scan -j").toString());
                  if (smartDev && smartDev.devices && smartDev.devices.length > 0) {
                    smartDev.devices.forEach((dev) => {
                      workload.push(execPromiseSave(`smartctl -j -a ${dev.name}`, util.execOptsWin));
                    });
                  }
                } catch (e) {
                  util.noop();
                }
              }
              util.promiseAll(
                workload
              ).then((data) => {
                let devices = data.results[0].toString().split(/\n\s*\n/);
                devices.forEach(function(device) {
                  let lines = device.split("\r\n");
                  const size = util.getValue(lines, "Size", ":").trim();
                  const status = util.getValue(lines, "Status", ":").trim().toLowerCase();
                  if (size) {
                    result2.push({
                      device: util.getValue(lines, "DeviceId", ":"),
                      // changed from PNPDeviceId to DeviceID (be be able to match devices)
                      type: device.indexOf("SSD") > -1 ? "SSD" : "HD",
                      // just a starting point ... better: MSFT_PhysicalDisk - Media Type ... see below
                      name: util.getValue(lines, "Caption", ":"),
                      vendor: getVendorFromModel(util.getValue(lines, "Caption", ":", true).trim()),
                      size: parseInt(size),
                      bytesPerSector: parseInt(util.getValue(lines, "BytesPerSector", ":")),
                      totalCylinders: parseInt(util.getValue(lines, "TotalCylinders", ":")),
                      totalHeads: parseInt(util.getValue(lines, "TotalHeads", ":")),
                      totalSectors: parseInt(util.getValue(lines, "TotalSectors", ":")),
                      totalTracks: parseInt(util.getValue(lines, "TotalTracks", ":")),
                      tracksPerCylinder: parseInt(util.getValue(lines, "TracksPerCylinder", ":")),
                      sectorsPerTrack: parseInt(util.getValue(lines, "SectorsPerTrack", ":")),
                      firmwareRevision: util.getValue(lines, "FirmwareRevision", ":").trim(),
                      serialNum: util.getValue(lines, "SerialNumber", ":").trim(),
                      interfaceType: util.getValue(lines, "InterfaceType", ":").trim(),
                      smartStatus: status === "ok" ? "Ok" : status === "degraded" ? "Degraded" : status === "pred fail" ? "Predicted Failure" : "Unknown",
                      temperature: null
                    });
                  }
                });
                devices = data.results[1].split(/\n\s*\n/);
                devices.forEach(function(device) {
                  let lines = device.split("\r\n");
                  const serialNum = util.getValue(lines, "SerialNumber", ":").trim();
                  const name = util.getValue(lines, "FriendlyName", ":").trim().replace("Msft ", "Microsoft");
                  const size = util.getValue(lines, "Size", ":").trim();
                  const model = util.getValue(lines, "Model", ":").trim();
                  const interfaceType = util.getValue(lines, "BusType", ":").trim();
                  let mediaType = util.getValue(lines, "MediaType", ":").trim();
                  if (mediaType === "3" || mediaType === "HDD") {
                    mediaType = "HD";
                  }
                  if (mediaType === "4") {
                    mediaType = "SSD";
                  }
                  if (mediaType === "5") {
                    mediaType = "SCM";
                  }
                  if (mediaType === "Unspecified" && (model.toLowerCase().indexOf("virtual") > -1 || model.toLowerCase().indexOf("vbox") > -1)) {
                    mediaType = "Virtual";
                  }
                  if (size) {
                    let i = util.findObjectByKey(result2, "serialNum", serialNum);
                    if (i === -1 || serialNum === "") {
                      i = util.findObjectByKey(result2, "name", name);
                    }
                    if (i != -1) {
                      result2[i].type = mediaType;
                      result2[i].interfaceType = interfaceType;
                    }
                  }
                });
                data.results.shift();
                data.results.shift();
                if (data.results.length) {
                  data.results.forEach((smartStr) => {
                    try {
                      const smartData = JSON.parse(smartStr);
                      if (smartData.serial_number) {
                        const serialNum = smartData.serial_number;
                        let i = util.findObjectByKey(result2, "serialNum", serialNum);
                        if (i != -1) {
                          result2[i].smartStatus = smartData.smart_status && smartData.smart_status.passed ? "Ok" : smartData.smart_status && smartData.smart_status.passed === false ? "Predicted Failure" : "unknown";
                          if (smartData.temperature && smartData.temperature.current) {
                            result2[i].temperature = smartData.temperature.current;
                          }
                          result2[i].smartData = smartData;
                        }
                      }
                    } catch (e) {
                      util.noop();
                    }
                  });
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    }
    exports2.diskLayout = diskLayout;
  }
});

// node_modules/systeminformation/lib/network.js
var require_network = __commonJS({
  "node_modules/systeminformation/lib/network.js"(exports2) {
    "use strict";
    var os = require("os");
    var exec = require("child_process").exec;
    var execSync = require("child_process").execSync;
    var fs2 = require("fs");
    var util = require_util();
    var _platform = process.platform;
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _sunos = _platform === "sunos";
    var _network = {};
    var _default_iface = "";
    var _ifaces = {};
    var _dhcpNics = [];
    var _networkInterfaces = [];
    var _mac = {};
    var pathToIp;
    function getDefaultNetworkInterface() {
      let ifacename = "";
      let ifacenameFirst = "";
      try {
        let ifaces = os.networkInterfaces();
        let scopeid = 9999;
        for (let dev in ifaces) {
          if ({}.hasOwnProperty.call(ifaces, dev)) {
            ifaces[dev].forEach(function(details) {
              if (details && details.internal === false) {
                ifacenameFirst = ifacenameFirst || dev;
                if (details.scopeid && details.scopeid < scopeid) {
                  ifacename = dev;
                  scopeid = details.scopeid;
                }
              }
            });
          }
        }
        ifacename = ifacename || ifacenameFirst || "";
        if (_windows) {
          let defaultIp = "";
          const cmd = "netstat -r";
          const result2 = execSync(cmd, util.execOptsWin);
          const lines = result2.toString().split(os.EOL);
          lines.forEach((line) => {
            line = line.replace(/\s+/g, " ").trim();
            if (line.indexOf("0.0.0.0 0.0.0.0") > -1 && !/[a-zA-Z]/.test(line)) {
              const parts = line.split(" ");
              if (parts.length >= 5) {
                defaultIp = parts[parts.length - 2];
              }
            }
          });
          if (defaultIp) {
            for (let dev in ifaces) {
              if ({}.hasOwnProperty.call(ifaces, dev)) {
                ifaces[dev].forEach(function(details) {
                  if (details && details.address && details.address === defaultIp) {
                    ifacename = dev;
                  }
                });
              }
            }
          }
        }
        if (_linux) {
          let cmd = "ip route 2> /dev/null | grep default";
          let result2 = execSync(cmd, util.execOptsLinux);
          let parts = result2.toString().split("\n")[0].split(/\s+/);
          if (parts[0] === "none" && parts[5]) {
            ifacename = parts[5];
          } else if (parts[4]) {
            ifacename = parts[4];
          }
          if (ifacename.indexOf(":") > -1) {
            ifacename = ifacename.split(":")[1].trim();
          }
        }
        if (_darwin || _freebsd || _openbsd || _netbsd || _sunos) {
          let cmd = "";
          if (_linux) {
            cmd = "ip route 2> /dev/null | grep default | awk '{print $5}'";
          }
          if (_darwin) {
            cmd = "route -n get default 2>/dev/null | grep interface: | awk '{print $2}'";
          }
          if (_freebsd || _openbsd || _netbsd || _sunos) {
            cmd = "route get 0.0.0.0 | grep interface:";
          }
          let result2 = execSync(cmd);
          ifacename = result2.toString().split("\n")[0];
          if (ifacename.indexOf(":") > -1) {
            ifacename = ifacename.split(":")[1].trim();
          }
        }
      } catch (e) {
        util.noop();
      }
      if (ifacename) {
        _default_iface = ifacename;
      }
      return _default_iface;
    }
    exports2.getDefaultNetworkInterface = getDefaultNetworkInterface;
    function getMacAddresses() {
      let iface = "";
      let mac = "";
      let result2 = {};
      if (_linux || _freebsd || _openbsd || _netbsd) {
        if (typeof pathToIp === "undefined") {
          try {
            const lines = execSync("which ip", util.execOptsLinux).toString().split("\n");
            if (lines.length && lines[0].indexOf(":") === -1 && lines[0].indexOf("/") === 0) {
              pathToIp = lines[0];
            } else {
              pathToIp = "";
            }
          } catch (e) {
            pathToIp = "";
          }
        }
        try {
          const cmd = "export LC_ALL=C; " + (pathToIp ? pathToIp + " link show up" : "/sbin/ifconfig") + "; unset LC_ALL";
          let res = execSync(cmd, util.execOptsLinux);
          const lines = res.toString().split("\n");
          for (let i = 0; i < lines.length; i++) {
            if (lines[i] && lines[i][0] !== " ") {
              if (pathToIp) {
                let nextline = lines[i + 1].trim().split(" ");
                if (nextline[0] === "link/ether") {
                  iface = lines[i].split(" ")[1];
                  iface = iface.slice(0, iface.length - 1);
                  mac = nextline[1];
                }
              } else {
                iface = lines[i].split(" ")[0];
                mac = lines[i].split("HWaddr ")[1];
              }
              if (iface && mac) {
                result2[iface] = mac.trim();
                iface = "";
                mac = "";
              }
            }
          }
        } catch (e) {
          util.noop();
        }
      }
      if (_darwin) {
        try {
          const cmd = "/sbin/ifconfig";
          let res = execSync(cmd);
          const lines = res.toString().split("\n");
          for (let i = 0; i < lines.length; i++) {
            if (lines[i] && lines[i][0] !== "	" && lines[i].indexOf(":") > 0) {
              iface = lines[i].split(":")[0];
            } else if (lines[i].indexOf("	ether ") === 0) {
              mac = lines[i].split("	ether ")[1];
              if (iface && mac) {
                result2[iface] = mac.trim();
                iface = "";
                mac = "";
              }
            }
          }
        } catch (e) {
          util.noop();
        }
      }
      return result2;
    }
    function networkInterfaceDefault(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = getDefaultNetworkInterface();
          if (callback) {
            callback(result2);
          }
          resolve(result2);
        });
      });
    }
    exports2.networkInterfaceDefault = networkInterfaceDefault;
    function parseLinesWindowsNics(sections, nconfigsections) {
      let nics = [];
      for (let i in sections) {
        try {
          if ({}.hasOwnProperty.call(sections, i)) {
            if (sections[i].trim() !== "") {
              let lines = sections[i].trim().split("\r\n");
              let linesNicConfig = null;
              try {
                linesNicConfig = nconfigsections && nconfigsections[i] ? nconfigsections[i].trim().split("\r\n") : [];
              } catch (e) {
                util.noop();
              }
              let netEnabled = util.getValue(lines, "NetEnabled", ":");
              let adapterType = util.getValue(lines, "AdapterTypeID", ":") === "9" ? "wireless" : "wired";
              let ifacename = util.getValue(lines, "Name", ":").replace(/\]/g, ")").replace(/\[/g, "(");
              let iface = util.getValue(lines, "NetConnectionID", ":").replace(/\]/g, ")").replace(/\[/g, "(");
              if (ifacename.toLowerCase().indexOf("wi-fi") >= 0 || ifacename.toLowerCase().indexOf("wireless") >= 0) {
                adapterType = "wireless";
              }
              if (netEnabled !== "") {
                const speed = parseInt(util.getValue(lines, "speed", ":").trim(), 10) / 1e6;
                nics.push({
                  mac: util.getValue(lines, "MACAddress", ":").toLowerCase(),
                  dhcp: util.getValue(linesNicConfig, "dhcpEnabled", ":").toLowerCase() === "true",
                  name: ifacename,
                  iface,
                  netEnabled: netEnabled === "TRUE",
                  speed: isNaN(speed) ? null : speed,
                  operstate: util.getValue(lines, "NetConnectionStatus", ":") === "2" ? "up" : "down",
                  type: adapterType
                });
              }
            }
          }
        } catch (e) {
          util.noop();
        }
      }
      return nics;
    }
    function getWindowsNics() {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let cmd = "Get-CimInstance Win32_NetworkAdapter | fl *; echo '#-#-#-#';";
          cmd += "Get-CimInstance Win32_NetworkAdapterConfiguration | fl DHCPEnabled";
          try {
            util.powerShell(cmd).then((data) => {
              data = data.split("#-#-#-#");
              const nsections = (data[0] || "").split(/\n\s*\n/);
              const nconfigsections = (data[1] || "").split(/\n\s*\n/);
              resolve(parseLinesWindowsNics(nsections, nconfigsections));
            });
          } catch (e) {
            resolve([]);
          }
        });
      });
    }
    function getWindowsDNSsuffixes() {
      let iface = {};
      let dnsSuffixes = {
        primaryDNS: "",
        exitCode: 0,
        ifaces: []
      };
      try {
        const ipconfig = execSync("ipconfig /all", util.execOptsWin);
        const ipconfigArray = ipconfig.split("\r\n\r\n");
        ipconfigArray.forEach((element, index) => {
          if (index == 1) {
            const longPrimaryDNS = element.split("\r\n").filter((element2) => {
              return element2.toUpperCase().includes("DNS");
            });
            const primaryDNS = longPrimaryDNS[0].substring(longPrimaryDNS[0].lastIndexOf(":") + 1);
            dnsSuffixes.primaryDNS = primaryDNS.trim();
            if (!dnsSuffixes.primaryDNS) {
              dnsSuffixes.primaryDNS = "Not defined";
            }
          }
          if (index > 1) {
            if (index % 2 == 0) {
              const name = element.substring(element.lastIndexOf(" ") + 1).replace(":", "");
              iface.name = name;
            } else {
              const connectionSpecificDNS = element.split("\r\n").filter((element2) => {
                return element2.toUpperCase().includes("DNS");
              });
              const dnsSuffix = connectionSpecificDNS[0].substring(connectionSpecificDNS[0].lastIndexOf(":") + 1);
              iface.dnsSuffix = dnsSuffix.trim();
              dnsSuffixes.ifaces.push(iface);
              iface = {};
            }
          }
        });
        return dnsSuffixes;
      } catch (error) {
        return {
          primaryDNS: "",
          exitCode: 0,
          ifaces: []
        };
      }
    }
    function getWindowsIfaceDNSsuffix(ifaces, ifacename) {
      let dnsSuffix = "";
      const interfaceName = ifacename + ".";
      try {
        const connectionDnsSuffix = ifaces.filter((iface) => {
          return interfaceName.includes(iface.name + ".");
        }).map((iface) => iface.dnsSuffix);
        if (connectionDnsSuffix[0]) {
          dnsSuffix = connectionDnsSuffix[0];
        }
        if (!dnsSuffix) {
          dnsSuffix = "";
        }
        return dnsSuffix;
      } catch (error) {
        return "Unknown";
      }
    }
    function getWindowsWiredProfilesInformation() {
      try {
        const result2 = execSync("netsh lan show profiles", util.execOptsWin);
        const profileList = result2.split("\r\nProfile on interface");
        return profileList;
      } catch (error) {
        if (error.status === 1 && error.stdout.includes("AutoConfig")) {
          return "Disabled";
        }
        return [];
      }
    }
    function getWindowsWirelessIfaceSSID(interfaceName) {
      try {
        const result2 = execSync(`netsh wlan show  interface name="${interfaceName}" | findstr "SSID"`, util.execOptsWin);
        const SSID = result2.split("\r\n").shift();
        const parseSSID = SSID.split(":").pop().trim();
        return parseSSID;
      } catch (error) {
        return "Unknown";
      }
    }
    function getWindowsIEEE8021x(connectionType, iface, ifaces) {
      let i8021x = {
        state: "Unknown",
        protocol: "Unknown"
      };
      if (ifaces === "Disabled") {
        i8021x.state = "Disabled";
        i8021x.protocol = "Not defined";
        return i8021x;
      }
      if (connectionType == "wired" && ifaces.length > 0) {
        try {
          const iface8021xInfo = ifaces.find((element) => {
            return element.includes(iface + "\r\n");
          });
          const arrayIface8021xInfo = iface8021xInfo.split("\r\n");
          const state8021x = arrayIface8021xInfo.find((element) => {
            return element.includes("802.1x");
          });
          if (state8021x.includes("Disabled")) {
            i8021x.state = "Disabled";
            i8021x.protocol = "Not defined";
          } else if (state8021x.includes("Enabled")) {
            const protocol8021x = arrayIface8021xInfo.find((element) => {
              return element.includes("EAP");
            });
            i8021x.protocol = protocol8021x.split(":").pop();
            i8021x.state = "Enabled";
          }
        } catch (error) {
          return i8021x;
        }
      } else if (connectionType == "wireless") {
        let i8021xState = "";
        let i8021xProtocol = "";
        try {
          const SSID = getWindowsWirelessIfaceSSID(iface);
          if (SSID !== "Unknown") {
            let ifaceSanitized = "";
            const s = util.isPrototypePolluted() ? "---" : util.sanitizeShellString(SSID);
            const l = util.mathMin(s.length, 32);
            for (let i = 0; i <= l; i++) {
              if (s[i] !== void 0) {
                ifaceSanitized = ifaceSanitized + s[i];
              }
            }
            i8021xState = execSync(`netsh wlan show profiles "${ifaceSanitized}" | findstr "802.1X"`, util.execOptsWin);
            i8021xProtocol = execSync(`netsh wlan show profiles "${ifaceSanitized}" | findstr "EAP"`, util.execOptsWin);
          }
          if (i8021xState.includes(":") && i8021xProtocol.includes(":")) {
            i8021x.state = i8021xState.split(":").pop();
            i8021x.protocol = i8021xProtocol.split(":").pop();
          }
        } catch (error) {
          if (error.status === 1 && error.stdout.includes("AutoConfig")) {
            i8021x.state = "Disabled";
            i8021x.protocol = "Not defined";
          }
          return i8021x;
        }
      }
      return i8021x;
    }
    function splitSectionsNics(lines) {
      const result2 = [];
      let section = [];
      lines.forEach(function(line) {
        if (!line.startsWith("	") && !line.startsWith(" ")) {
          if (section.length) {
            result2.push(section);
            section = [];
          }
        }
        section.push(line);
      });
      if (section.length) {
        result2.push(section);
      }
      return result2;
    }
    function parseLinesDarwinNics(sections) {
      let nics = [];
      sections.forEach((section) => {
        let nic = {
          iface: "",
          mtu: null,
          mac: "",
          ip6: "",
          ip4: "",
          speed: null,
          type: "",
          operstate: "",
          duplex: "",
          internal: false
        };
        const first = section[0];
        nic.iface = first.split(":")[0].trim();
        let parts = first.split("> mtu");
        nic.mtu = parts.length > 1 ? parseInt(parts[1], 10) : null;
        if (isNaN(nic.mtu)) {
          nic.mtu = null;
        }
        nic.internal = parts[0].toLowerCase().indexOf("loopback") > -1;
        section.forEach((line) => {
          if (line.trim().startsWith("ether ")) {
            nic.mac = line.split("ether ")[1].toLowerCase().trim();
          }
          if (line.trim().startsWith("inet6 ") && !nic.ip6) {
            nic.ip6 = line.split("inet6 ")[1].toLowerCase().split("%")[0].split(" ")[0];
          }
          if (line.trim().startsWith("inet ") && !nic.ip4) {
            nic.ip4 = line.split("inet ")[1].toLowerCase().split(" ")[0];
          }
        });
        let speed = util.getValue(section, "link rate");
        nic.speed = speed ? parseFloat(speed) : null;
        if (nic.speed === null) {
          speed = util.getValue(section, "uplink rate");
          nic.speed = speed ? parseFloat(speed) : null;
          if (nic.speed !== null && speed.toLowerCase().indexOf("gbps") >= 0) {
            nic.speed = nic.speed * 1e3;
          }
        } else {
          if (speed.toLowerCase().indexOf("gbps") >= 0) {
            nic.speed = nic.speed * 1e3;
          }
        }
        nic.type = util.getValue(section, "type").toLowerCase().indexOf("wi-fi") > -1 ? "wireless" : "wired";
        const operstate = util.getValue(section, "status").toLowerCase();
        nic.operstate = operstate === "active" ? "up" : operstate === "inactive" ? "down" : "unknown";
        nic.duplex = util.getValue(section, "media").toLowerCase().indexOf("half-duplex") > -1 ? "half" : "full";
        if (nic.ip6 || nic.ip4 || nic.mac) {
          nics.push(nic);
        }
      });
      return nics;
    }
    function getDarwinNics() {
      const cmd = "/sbin/ifconfig -v";
      try {
        const lines = execSync(cmd, { maxBuffer: 1024 * 2e4 }).toString().split("\n");
        const nsections = splitSectionsNics(lines);
        return parseLinesDarwinNics(nsections);
      } catch (e) {
        return [];
      }
    }
    function getLinuxIfaceConnectionName(interfaceName) {
      const cmd = `nmcli device status 2>/dev/null | grep ${interfaceName}`;
      try {
        const result2 = execSync(cmd, util.execOptsLinux).toString();
        const resultFormat = result2.replace(/\s+/g, " ").trim();
        const connectionNameLines = resultFormat.split(" ").slice(3);
        const connectionName = connectionNameLines.join(" ");
        return connectionName != "--" ? connectionName : "";
      } catch (e) {
        return "";
      }
    }
    function checkLinuxDCHPInterfaces(file) {
      let result2 = [];
      try {
        let cmd = `cat ${file} 2> /dev/null | grep 'iface\\|source'`;
        const lines = execSync(cmd, util.execOptsLinux).toString().split("\n");
        lines.forEach((line) => {
          const parts = line.replace(/\s+/g, " ").trim().split(" ");
          if (parts.length >= 4) {
            if (line.toLowerCase().indexOf(" inet ") >= 0 && line.toLowerCase().indexOf("dhcp") >= 0) {
              result2.push(parts[1]);
            }
          }
          if (line.toLowerCase().includes("source")) {
            let file2 = line.split(" ")[1];
            result2 = result2.concat(checkLinuxDCHPInterfaces(file2));
          }
        });
      } catch (e) {
        util.noop();
      }
      return result2;
    }
    function getLinuxDHCPNics() {
      let cmd = "ip a 2> /dev/null";
      let result2 = [];
      try {
        const lines = execSync(cmd, util.execOptsLinux).toString().split("\n");
        const nsections = splitSectionsNics(lines);
        result2 = parseLinuxDHCPNics(nsections);
      } catch (e) {
        util.noop();
      }
      try {
        result2 = checkLinuxDCHPInterfaces("/etc/network/interfaces");
      } catch (e) {
        util.noop();
      }
      return result2;
    }
    function parseLinuxDHCPNics(sections) {
      const result2 = [];
      if (sections && sections.length) {
        sections.forEach((lines) => {
          if (lines && lines.length) {
            const parts = lines[0].split(":");
            if (parts.length > 2) {
              for (let line of lines) {
                if (line.indexOf(" inet ") >= 0 && line.indexOf(" dynamic ") >= 0) {
                  const parts2 = line.split(" ");
                  const nic = parts2[parts2.length - 1].trim();
                  result2.push(nic);
                  break;
                }
              }
            }
          }
        });
      }
      return result2;
    }
    function getLinuxIfaceDHCPstatus(iface, connectionName, DHCPNics) {
      let result2 = false;
      if (connectionName) {
        const cmd = `nmcli connection show "${connectionName}" 2>/dev/null | grep ipv4.method;`;
        try {
          const lines = execSync(cmd, util.execOptsLinux).toString();
          const resultFormat = lines.replace(/\s+/g, " ").trim();
          let dhcStatus = resultFormat.split(" ").slice(1).toString();
          switch (dhcStatus) {
            case "auto":
              result2 = true;
              break;
            default:
              result2 = false;
              break;
          }
          return result2;
        } catch (e) {
          return DHCPNics.indexOf(iface) >= 0;
        }
      } else {
        return DHCPNics.indexOf(iface) >= 0;
      }
    }
    function getDarwinIfaceDHCPstatus(iface) {
      let result2 = false;
      const cmd = `ipconfig getpacket "${iface}" 2>/dev/null | grep lease_time;`;
      try {
        const lines = execSync(cmd).toString().split("\n");
        if (lines.length && lines[0].startsWith("lease_time")) {
          result2 = true;
        }
      } catch (e) {
        util.noop();
      }
      return result2;
    }
    function getLinuxIfaceDNSsuffix(connectionName) {
      if (connectionName) {
        const cmd = `nmcli connection show "${connectionName}" 2>/dev/null | grep ipv4.dns-search;`;
        try {
          const result2 = execSync(cmd, util.execOptsLinux).toString();
          const resultFormat = result2.replace(/\s+/g, " ").trim();
          const dnsSuffix = resultFormat.split(" ").slice(1).toString();
          return dnsSuffix == "--" ? "Not defined" : dnsSuffix;
        } catch (e) {
          return "Unknown";
        }
      } else {
        return "Unknown";
      }
    }
    function getLinuxIfaceIEEE8021xAuth(connectionName) {
      if (connectionName) {
        const cmd = `nmcli connection show "${connectionName}" 2>/dev/null | grep 802-1x.eap;`;
        try {
          const result2 = execSync(cmd, util.execOptsLinux).toString();
          const resultFormat = result2.replace(/\s+/g, " ").trim();
          const authenticationProtocol = resultFormat.split(" ").slice(1).toString();
          return authenticationProtocol == "--" ? "" : authenticationProtocol;
        } catch (e) {
          return "Not defined";
        }
      } else {
        return "Not defined";
      }
    }
    function getLinuxIfaceIEEE8021xState(authenticationProtocol) {
      if (authenticationProtocol) {
        if (authenticationProtocol == "Not defined") {
          return "Disabled";
        }
        return "Enabled";
      } else {
        return "Unknown";
      }
    }
    function testVirtualNic(iface, ifaceName, mac) {
      const virtualMacs = ["00:00:00:00:00:00", "00:03:FF", "00:05:69", "00:0C:29", "00:0F:4B", "00:13:07", "00:13:BE", "00:15:5d", "00:16:3E", "00:1C:42", "00:21:F6", "00:24:0B", "00:50:56", "00:A0:B1", "00:E0:C8", "08:00:27", "0A:00:27", "18:92:2C", "16:DF:49", "3C:F3:92", "54:52:00", "FC:15:97"];
      if (mac) {
        return virtualMacs.filter((item) => {
          return mac.toUpperCase().toUpperCase().startsWith(item.substring(0, mac.length));
        }).length > 0 || iface.toLowerCase().indexOf(" virtual ") > -1 || ifaceName.toLowerCase().indexOf(" virtual ") > -1 || iface.toLowerCase().indexOf("vethernet ") > -1 || ifaceName.toLowerCase().indexOf("vethernet ") > -1 || iface.toLowerCase().startsWith("veth") || ifaceName.toLowerCase().startsWith("veth") || iface.toLowerCase().startsWith("vboxnet") || ifaceName.toLowerCase().startsWith("vboxnet");
      } else {
        return false;
      }
    }
    function networkInterfaces(callback, rescan, defaultString) {
      if (typeof callback === "string") {
        defaultString = callback;
        rescan = true;
        callback = null;
      }
      if (typeof callback === "boolean") {
        rescan = callback;
        callback = null;
        defaultString = "";
      }
      if (typeof rescan === "undefined") {
        rescan = true;
      }
      defaultString = defaultString || "";
      defaultString = "" + defaultString;
      return new Promise((resolve) => {
        process.nextTick(() => {
          let ifaces = os.networkInterfaces();
          let result2 = [];
          let nics = [];
          let dnsSuffixes = [];
          let nics8021xInfo = [];
          if (_darwin || _freebsd || _openbsd || _netbsd) {
            if (JSON.stringify(ifaces) === JSON.stringify(_ifaces) && !rescan) {
              result2 = _networkInterfaces;
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            } else {
              const defaultInterface = getDefaultNetworkInterface();
              _ifaces = JSON.parse(JSON.stringify(ifaces));
              nics = getDarwinNics();
              nics.forEach((nic) => {
                if ({}.hasOwnProperty.call(ifaces, nic.iface)) {
                  ifaces[nic.iface].forEach(function(details) {
                    if (details.family === "IPv4" || details.family === 4) {
                      nic.ip4subnet = details.netmask;
                    }
                    if (details.family === "IPv6" || details.family === 6) {
                      nic.ip6subnet = details.netmask;
                    }
                  });
                }
                let ifaceSanitized = "";
                const s = util.isPrototypePolluted() ? "---" : util.sanitizeShellString(nic.iface);
                const l = util.mathMin(s.length, 2e3);
                for (let i = 0; i <= l; i++) {
                  if (s[i] !== void 0) {
                    ifaceSanitized = ifaceSanitized + s[i];
                  }
                }
                result2.push({
                  iface: nic.iface,
                  ifaceName: nic.iface,
                  default: nic.iface === defaultInterface,
                  ip4: nic.ip4,
                  ip4subnet: nic.ip4subnet || "",
                  ip6: nic.ip6,
                  ip6subnet: nic.ip6subnet || "",
                  mac: nic.mac,
                  internal: nic.internal,
                  virtual: nic.internal ? false : testVirtualNic(nic.iface, nic.iface, nic.mac),
                  operstate: nic.operstate,
                  type: nic.type,
                  duplex: nic.duplex,
                  mtu: nic.mtu,
                  speed: nic.speed,
                  dhcp: getDarwinIfaceDHCPstatus(ifaceSanitized),
                  dnsSuffix: "",
                  ieee8021xAuth: "",
                  ieee8021xState: "",
                  carrierChanges: 0
                });
              });
              _networkInterfaces = result2;
              if (defaultString.toLowerCase().indexOf("default") >= 0) {
                result2 = result2.filter((item) => item.default);
                if (result2.length > 0) {
                  result2 = result2[0];
                } else {
                  result2 = [];
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
          if (_linux) {
            if (JSON.stringify(ifaces) === JSON.stringify(_ifaces) && !rescan) {
              result2 = _networkInterfaces;
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            } else {
              _ifaces = JSON.parse(JSON.stringify(ifaces));
              _dhcpNics = getLinuxDHCPNics();
              const defaultInterface = getDefaultNetworkInterface();
              for (let dev in ifaces) {
                let ip4 = "";
                let ip4subnet = "";
                let ip6 = "";
                let ip6subnet = "";
                let mac = "";
                let duplex = "";
                let mtu = "";
                let speed = null;
                let carrierChanges = 0;
                let dhcp = false;
                let dnsSuffix = "";
                let ieee8021xAuth = "";
                let ieee8021xState = "";
                let type = "";
                if ({}.hasOwnProperty.call(ifaces, dev)) {
                  let ifaceName = dev;
                  ifaces[dev].forEach(function(details) {
                    if (details.family === "IPv4" || details.family === 4) {
                      ip4 = details.address;
                      ip4subnet = details.netmask;
                    }
                    if (details.family === "IPv6" || details.family === 6) {
                      if (!ip6 || ip6.match(/^fe80::/i)) {
                        ip6 = details.address;
                        ip6subnet = details.netmask;
                      }
                    }
                    mac = details.mac;
                    const nodeMainVersion = parseInt(process.versions.node.split("."), 10);
                    if (mac.indexOf("00:00:0") > -1 && (_linux || _darwin) && !details.internal && nodeMainVersion >= 8 && nodeMainVersion <= 11) {
                      if (Object.keys(_mac).length === 0) {
                        _mac = getMacAddresses();
                      }
                      mac = _mac[dev] || "";
                    }
                  });
                  let iface = dev.split(":")[0].trim().toLowerCase();
                  let ifaceSanitized = "";
                  const s = util.isPrototypePolluted() ? "---" : util.sanitizeShellString(iface);
                  const l = util.mathMin(s.length, 2e3);
                  for (let i = 0; i <= l; i++) {
                    if (s[i] !== void 0) {
                      ifaceSanitized = ifaceSanitized + s[i];
                    }
                  }
                  const cmd = `echo -n "addr_assign_type: "; cat /sys/class/net/${ifaceSanitized}/addr_assign_type 2>/dev/null; echo;
            echo -n "address: "; cat /sys/class/net/${ifaceSanitized}/address 2>/dev/null; echo;
            echo -n "addr_len: "; cat /sys/class/net/${ifaceSanitized}/addr_len 2>/dev/null; echo;
            echo -n "broadcast: "; cat /sys/class/net/${ifaceSanitized}/broadcast 2>/dev/null; echo;
            echo -n "carrier: "; cat /sys/class/net/${ifaceSanitized}/carrier 2>/dev/null; echo;
            echo -n "carrier_changes: "; cat /sys/class/net/${ifaceSanitized}/carrier_changes 2>/dev/null; echo;
            echo -n "dev_id: "; cat /sys/class/net/${ifaceSanitized}/dev_id 2>/dev/null; echo;
            echo -n "dev_port: "; cat /sys/class/net/${ifaceSanitized}/dev_port 2>/dev/null; echo;
            echo -n "dormant: "; cat /sys/class/net/${ifaceSanitized}/dormant 2>/dev/null; echo;
            echo -n "duplex: "; cat /sys/class/net/${ifaceSanitized}/duplex 2>/dev/null; echo;
            echo -n "flags: "; cat /sys/class/net/${ifaceSanitized}/flags 2>/dev/null; echo;
            echo -n "gro_flush_timeout: "; cat /sys/class/net/${ifaceSanitized}/gro_flush_timeout 2>/dev/null; echo;
            echo -n "ifalias: "; cat /sys/class/net/${ifaceSanitized}/ifalias 2>/dev/null; echo;
            echo -n "ifindex: "; cat /sys/class/net/${ifaceSanitized}/ifindex 2>/dev/null; echo;
            echo -n "iflink: "; cat /sys/class/net/${ifaceSanitized}/iflink 2>/dev/null; echo;
            echo -n "link_mode: "; cat /sys/class/net/${ifaceSanitized}/link_mode 2>/dev/null; echo;
            echo -n "mtu: "; cat /sys/class/net/${ifaceSanitized}/mtu 2>/dev/null; echo;
            echo -n "netdev_group: "; cat /sys/class/net/${ifaceSanitized}/netdev_group 2>/dev/null; echo;
            echo -n "operstate: "; cat /sys/class/net/${ifaceSanitized}/operstate 2>/dev/null; echo;
            echo -n "proto_down: "; cat /sys/class/net/${ifaceSanitized}/proto_down 2>/dev/null; echo;
            echo -n "speed: "; cat /sys/class/net/${ifaceSanitized}/speed 2>/dev/null; echo;
            echo -n "tx_queue_len: "; cat /sys/class/net/${ifaceSanitized}/tx_queue_len 2>/dev/null; echo;
            echo -n "type: "; cat /sys/class/net/${ifaceSanitized}/type 2>/dev/null; echo;
            echo -n "wireless: "; cat /proc/net/wireless 2>/dev/null | grep ${ifaceSanitized}; echo;
            echo -n "wirelessspeed: "; iw dev ${ifaceSanitized} link 2>&1 | grep bitrate; echo;`;
                  let lines = [];
                  try {
                    lines = execSync(cmd, util.execOptsLinux).toString().split("\n");
                    const connectionName = getLinuxIfaceConnectionName(ifaceSanitized);
                    dhcp = getLinuxIfaceDHCPstatus(ifaceSanitized, connectionName, _dhcpNics);
                    dnsSuffix = getLinuxIfaceDNSsuffix(connectionName);
                    ieee8021xAuth = getLinuxIfaceIEEE8021xAuth(connectionName);
                    ieee8021xState = getLinuxIfaceIEEE8021xState(ieee8021xAuth);
                  } catch (e) {
                    util.noop();
                  }
                  duplex = util.getValue(lines, "duplex");
                  duplex = duplex.startsWith("cat") ? "" : duplex;
                  mtu = parseInt(util.getValue(lines, "mtu"), 10);
                  let myspeed = parseInt(util.getValue(lines, "speed"), 10);
                  speed = isNaN(myspeed) ? null : myspeed;
                  let wirelessspeed = util.getValue(lines, "wirelessspeed").split("tx bitrate: ");
                  if (speed === null && wirelessspeed.length === 2) {
                    myspeed = parseFloat(wirelessspeed[1]);
                    speed = isNaN(myspeed) ? null : myspeed;
                  }
                  carrierChanges = parseInt(util.getValue(lines, "carrier_changes"), 10);
                  const operstate = util.getValue(lines, "operstate");
                  type = operstate === "up" ? util.getValue(lines, "wireless").trim() ? "wireless" : "wired" : "unknown";
                  if (ifaceSanitized === "lo" || ifaceSanitized.startsWith("bond")) {
                    type = "virtual";
                  }
                  let internal = ifaces[dev] && ifaces[dev][0] ? ifaces[dev][0].internal : false;
                  if (dev.toLowerCase().indexOf("loopback") > -1 || ifaceName.toLowerCase().indexOf("loopback") > -1) {
                    internal = true;
                  }
                  const virtual = internal ? false : testVirtualNic(dev, ifaceName, mac);
                  result2.push({
                    iface: ifaceSanitized,
                    ifaceName,
                    default: iface === defaultInterface,
                    ip4,
                    ip4subnet,
                    ip6,
                    ip6subnet,
                    mac,
                    internal,
                    virtual,
                    operstate,
                    type,
                    duplex,
                    mtu,
                    speed,
                    dhcp,
                    dnsSuffix,
                    ieee8021xAuth,
                    ieee8021xState,
                    carrierChanges
                  });
                }
              }
              _networkInterfaces = result2;
              if (defaultString.toLowerCase().indexOf("default") >= 0) {
                result2 = result2.filter((item) => item.default);
                if (result2.length > 0) {
                  result2 = result2[0];
                } else {
                  result2 = [];
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
          if (_windows) {
            if (JSON.stringify(ifaces) === JSON.stringify(_ifaces) && !rescan) {
              result2 = _networkInterfaces;
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            } else {
              _ifaces = JSON.parse(JSON.stringify(ifaces));
              const defaultInterface = getDefaultNetworkInterface();
              getWindowsNics().then(function(nics2) {
                nics2.forEach((nic) => {
                  let found = false;
                  Object.keys(ifaces).forEach((key) => {
                    if (!found) {
                      ifaces[key].forEach((value) => {
                        if (Object.keys(value).indexOf("mac") >= 0) {
                          found = value["mac"] === nic.mac;
                        }
                      });
                    }
                  });
                  if (!found) {
                    ifaces[nic.name] = [{ mac: nic.mac }];
                  }
                });
                nics8021xInfo = getWindowsWiredProfilesInformation();
                dnsSuffixes = getWindowsDNSsuffixes();
                for (let dev in ifaces) {
                  let ifaceSanitized = "";
                  const s = util.isPrototypePolluted() ? "---" : util.sanitizeShellString(dev);
                  const l = util.mathMin(s.length, 2e3);
                  for (let i = 0; i <= l; i++) {
                    if (s[i] !== void 0) {
                      ifaceSanitized = ifaceSanitized + s[i];
                    }
                  }
                  let iface = dev;
                  let ip4 = "";
                  let ip4subnet = "";
                  let ip6 = "";
                  let ip6subnet = "";
                  let mac = "";
                  let duplex = "";
                  let mtu = "";
                  let speed = null;
                  let carrierChanges = 0;
                  let operstate = "down";
                  let dhcp = false;
                  let dnsSuffix = "";
                  let ieee8021xAuth = "";
                  let ieee8021xState = "";
                  let type = "";
                  if ({}.hasOwnProperty.call(ifaces, dev)) {
                    let ifaceName = dev;
                    ifaces[dev].forEach(function(details) {
                      if (details.family === "IPv4" || details.family === 4) {
                        ip4 = details.address;
                        ip4subnet = details.netmask;
                      }
                      if (details.family === "IPv6" || details.family === 6) {
                        if (!ip6 || ip6.match(/^fe80::/i)) {
                          ip6 = details.address;
                          ip6subnet = details.netmask;
                        }
                      }
                      mac = details.mac;
                      const nodeMainVersion = parseInt(process.versions.node.split("."), 10);
                      if (mac.indexOf("00:00:0") > -1 && (_linux || _darwin) && !details.internal && nodeMainVersion >= 8 && nodeMainVersion <= 11) {
                        if (Object.keys(_mac).length === 0) {
                          _mac = getMacAddresses();
                        }
                        mac = _mac[dev] || "";
                      }
                    });
                    dnsSuffix = getWindowsIfaceDNSsuffix(dnsSuffixes.ifaces, ifaceSanitized);
                    let foundFirst = false;
                    nics2.forEach((detail) => {
                      if (detail.mac === mac && !foundFirst) {
                        iface = detail.iface || iface;
                        ifaceName = detail.name;
                        dhcp = detail.dhcp;
                        operstate = detail.operstate;
                        speed = operstate === "up" ? detail.speed : 0;
                        type = detail.type;
                        foundFirst = true;
                      }
                    });
                    if (dev.toLowerCase().indexOf("wlan") >= 0 || ifaceName.toLowerCase().indexOf("wlan") >= 0 || ifaceName.toLowerCase().indexOf("802.11n") >= 0 || ifaceName.toLowerCase().indexOf("wireless") >= 0 || ifaceName.toLowerCase().indexOf("wi-fi") >= 0 || ifaceName.toLowerCase().indexOf("wifi") >= 0) {
                      type = "wireless";
                    }
                    const IEEE8021x = getWindowsIEEE8021x(type, ifaceSanitized, nics8021xInfo);
                    ieee8021xAuth = IEEE8021x.protocol;
                    ieee8021xState = IEEE8021x.state;
                    let internal = ifaces[dev] && ifaces[dev][0] ? ifaces[dev][0].internal : false;
                    if (dev.toLowerCase().indexOf("loopback") > -1 || ifaceName.toLowerCase().indexOf("loopback") > -1) {
                      internal = true;
                    }
                    const virtual = internal ? false : testVirtualNic(dev, ifaceName, mac);
                    result2.push({
                      iface,
                      ifaceName,
                      default: iface === defaultInterface,
                      ip4,
                      ip4subnet,
                      ip6,
                      ip6subnet,
                      mac,
                      internal,
                      virtual,
                      operstate,
                      type,
                      duplex,
                      mtu,
                      speed,
                      dhcp,
                      dnsSuffix,
                      ieee8021xAuth,
                      ieee8021xState,
                      carrierChanges
                    });
                  }
                }
                _networkInterfaces = result2;
                if (defaultString.toLowerCase().indexOf("default") >= 0) {
                  result2 = result2.filter((item) => item.default);
                  if (result2.length > 0) {
                    result2 = result2[0];
                  } else {
                    result2 = [];
                  }
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            }
          }
        });
      });
    }
    exports2.networkInterfaces = networkInterfaces;
    function calcNetworkSpeed(iface, rx_bytes, tx_bytes, operstate, rx_dropped, rx_errors, tx_dropped, tx_errors) {
      let result2 = {
        iface,
        operstate,
        rx_bytes,
        rx_dropped,
        rx_errors,
        tx_bytes,
        tx_dropped,
        tx_errors,
        rx_sec: null,
        tx_sec: null,
        ms: 0
      };
      if (_network[iface] && _network[iface].ms) {
        result2.ms = Date.now() - _network[iface].ms;
        result2.rx_sec = rx_bytes - _network[iface].rx_bytes >= 0 ? (rx_bytes - _network[iface].rx_bytes) / (result2.ms / 1e3) : 0;
        result2.tx_sec = tx_bytes - _network[iface].tx_bytes >= 0 ? (tx_bytes - _network[iface].tx_bytes) / (result2.ms / 1e3) : 0;
        _network[iface].rx_bytes = rx_bytes;
        _network[iface].tx_bytes = tx_bytes;
        _network[iface].rx_sec = result2.rx_sec;
        _network[iface].tx_sec = result2.tx_sec;
        _network[iface].ms = Date.now();
        _network[iface].last_ms = result2.ms;
        _network[iface].operstate = operstate;
      } else {
        if (!_network[iface]) {
          _network[iface] = {};
        }
        _network[iface].rx_bytes = rx_bytes;
        _network[iface].tx_bytes = tx_bytes;
        _network[iface].rx_sec = null;
        _network[iface].tx_sec = null;
        _network[iface].ms = Date.now();
        _network[iface].last_ms = 0;
        _network[iface].operstate = operstate;
      }
      return result2;
    }
    function networkStats(ifaces, callback) {
      let ifacesArray = [];
      return new Promise((resolve) => {
        process.nextTick(() => {
          if (util.isFunction(ifaces) && !callback) {
            callback = ifaces;
            ifacesArray = [getDefaultNetworkInterface()];
          } else {
            if (typeof ifaces !== "string" && ifaces !== void 0) {
              if (callback) {
                callback([]);
              }
              return resolve([]);
            }
            ifaces = ifaces || getDefaultNetworkInterface();
            try {
              ifaces.__proto__.toLowerCase = util.stringToLower;
              ifaces.__proto__.replace = util.stringReplace;
              ifaces.__proto__.toString = util.stringToString;
              ifaces.__proto__.substr = util.stringSubstr;
              ifaces.__proto__.substring = util.stringSubstring;
              ifaces.__proto__.trim = util.stringTrim;
              ifaces.__proto__.startsWith = util.stringStartWith;
            } catch (e) {
              Object.setPrototypeOf(ifaces, util.stringObj);
            }
            ifaces = ifaces.trim().toLowerCase().replace(/,+/g, "|");
            ifacesArray = ifaces.split("|");
          }
          const result2 = [];
          const workload = [];
          if (ifacesArray.length && ifacesArray[0].trim() === "*") {
            ifacesArray = [];
            networkInterfaces(false).then((allIFaces) => {
              for (let iface of allIFaces) {
                ifacesArray.push(iface.iface);
              }
              networkStats(ifacesArray.join(",")).then((result3) => {
                if (callback) {
                  callback(result3);
                }
                resolve(result3);
              });
            });
          } else {
            for (let iface of ifacesArray) {
              workload.push(networkStatsSingle(iface.trim()));
            }
            if (workload.length) {
              Promise.all(
                workload
              ).then((data) => {
                if (callback) {
                  callback(data);
                }
                resolve(data);
              });
            } else {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    }
    function networkStatsSingle(iface) {
      function parseLinesWindowsPerfData(sections) {
        let perfData = [];
        for (let i in sections) {
          if ({}.hasOwnProperty.call(sections, i)) {
            if (sections[i].trim() !== "") {
              let lines = sections[i].trim().split("\r\n");
              perfData.push({
                name: util.getValue(lines, "Name", ":").replace(/[()[\] ]+/g, "").replace(/#|\//g, "_").toLowerCase(),
                rx_bytes: parseInt(util.getValue(lines, "BytesReceivedPersec", ":"), 10),
                rx_errors: parseInt(util.getValue(lines, "PacketsReceivedErrors", ":"), 10),
                rx_dropped: parseInt(util.getValue(lines, "PacketsReceivedDiscarded", ":"), 10),
                tx_bytes: parseInt(util.getValue(lines, "BytesSentPersec", ":"), 10),
                tx_errors: parseInt(util.getValue(lines, "PacketsOutboundErrors", ":"), 10),
                tx_dropped: parseInt(util.getValue(lines, "PacketsOutboundDiscarded", ":"), 10)
              });
            }
          }
        }
        return perfData;
      }
      return new Promise((resolve) => {
        process.nextTick(() => {
          let ifaceSanitized = "";
          const s = util.isPrototypePolluted() ? "---" : util.sanitizeShellString(iface);
          const l = util.mathMin(s.length, 2e3);
          for (let i = 0; i <= l; i++) {
            if (s[i] !== void 0) {
              ifaceSanitized = ifaceSanitized + s[i];
            }
          }
          let result2 = {
            iface: ifaceSanitized,
            operstate: "unknown",
            rx_bytes: 0,
            rx_dropped: 0,
            rx_errors: 0,
            tx_bytes: 0,
            tx_dropped: 0,
            tx_errors: 0,
            rx_sec: null,
            tx_sec: null,
            ms: 0
          };
          let operstate = "unknown";
          let rx_bytes = 0;
          let tx_bytes = 0;
          let rx_dropped = 0;
          let rx_errors = 0;
          let tx_dropped = 0;
          let tx_errors = 0;
          let cmd, lines, stats;
          if (!_network[ifaceSanitized] || _network[ifaceSanitized] && !_network[ifaceSanitized].ms || _network[ifaceSanitized] && _network[ifaceSanitized].ms && Date.now() - _network[ifaceSanitized].ms >= 500) {
            if (_linux) {
              if (fs2.existsSync("/sys/class/net/" + ifaceSanitized)) {
                cmd = "cat /sys/class/net/" + ifaceSanitized + "/operstate; cat /sys/class/net/" + ifaceSanitized + "/statistics/rx_bytes; cat /sys/class/net/" + ifaceSanitized + "/statistics/tx_bytes; cat /sys/class/net/" + ifaceSanitized + "/statistics/rx_dropped; cat /sys/class/net/" + ifaceSanitized + "/statistics/rx_errors; cat /sys/class/net/" + ifaceSanitized + "/statistics/tx_dropped; cat /sys/class/net/" + ifaceSanitized + "/statistics/tx_errors; ";
                exec(cmd, function(error, stdout) {
                  if (!error) {
                    lines = stdout.toString().split("\n");
                    operstate = lines[0].trim();
                    rx_bytes = parseInt(lines[1], 10);
                    tx_bytes = parseInt(lines[2], 10);
                    rx_dropped = parseInt(lines[3], 10);
                    rx_errors = parseInt(lines[4], 10);
                    tx_dropped = parseInt(lines[5], 10);
                    tx_errors = parseInt(lines[6], 10);
                    result2 = calcNetworkSpeed(ifaceSanitized, rx_bytes, tx_bytes, operstate, rx_dropped, rx_errors, tx_dropped, tx_errors);
                  }
                  resolve(result2);
                });
              } else {
                resolve(result2);
              }
            }
            if (_freebsd || _openbsd || _netbsd) {
              cmd = "netstat -ibndI " + ifaceSanitized;
              exec(cmd, function(error, stdout) {
                if (!error) {
                  lines = stdout.toString().split("\n");
                  for (let i = 1; i < lines.length; i++) {
                    const line = lines[i].replace(/ +/g, " ").split(" ");
                    if (line && line[0] && line[7] && line[10]) {
                      rx_bytes = rx_bytes + parseInt(line[7]);
                      if (line[6].trim() !== "-") {
                        rx_dropped = rx_dropped + parseInt(line[6]);
                      }
                      if (line[5].trim() !== "-") {
                        rx_errors = rx_errors + parseInt(line[5]);
                      }
                      tx_bytes = tx_bytes + parseInt(line[10]);
                      if (line[12].trim() !== "-") {
                        tx_dropped = tx_dropped + parseInt(line[12]);
                      }
                      if (line[9].trim() !== "-") {
                        tx_errors = tx_errors + parseInt(line[9]);
                      }
                      operstate = "up";
                    }
                  }
                  result2 = calcNetworkSpeed(ifaceSanitized, rx_bytes, tx_bytes, operstate, rx_dropped, rx_errors, tx_dropped, tx_errors);
                }
                resolve(result2);
              });
            }
            if (_darwin) {
              cmd = "ifconfig " + ifaceSanitized + ' | grep "status"';
              exec(cmd, function(error, stdout) {
                result2.operstate = (stdout.toString().split(":")[1] || "").trim();
                result2.operstate = (result2.operstate || "").toLowerCase();
                result2.operstate = result2.operstate === "active" ? "up" : result2.operstate === "inactive" ? "down" : "unknown";
                cmd = "netstat -bdI " + ifaceSanitized;
                exec(cmd, function(error2, stdout2) {
                  if (!error2) {
                    lines = stdout2.toString().split("\n");
                    if (lines.length > 1 && lines[1].trim() !== "") {
                      stats = lines[1].replace(/ +/g, " ").split(" ");
                      const offset = stats.length > 11 ? 1 : 0;
                      rx_bytes = parseInt(stats[offset + 5]);
                      rx_dropped = parseInt(stats[offset + 10]);
                      rx_errors = parseInt(stats[offset + 4]);
                      tx_bytes = parseInt(stats[offset + 8]);
                      tx_dropped = parseInt(stats[offset + 10]);
                      tx_errors = parseInt(stats[offset + 7]);
                      result2 = calcNetworkSpeed(ifaceSanitized, rx_bytes, tx_bytes, result2.operstate, rx_dropped, rx_errors, tx_dropped, tx_errors);
                    }
                  }
                  resolve(result2);
                });
              });
            }
            if (_windows) {
              let perfData = [];
              let ifaceName = ifaceSanitized;
              util.powerShell("Get-CimInstance Win32_PerfRawData_Tcpip_NetworkInterface | select Name,BytesReceivedPersec,PacketsReceivedErrors,PacketsReceivedDiscarded,BytesSentPersec,PacketsOutboundErrors,PacketsOutboundDiscarded | fl").then((stdout, error) => {
                if (!error) {
                  const psections = stdout.toString().split(/\n\s*\n/);
                  perfData = parseLinesWindowsPerfData(psections);
                }
                networkInterfaces(false).then((interfaces) => {
                  rx_bytes = 0;
                  tx_bytes = 0;
                  perfData.forEach((detail) => {
                    interfaces.forEach((det) => {
                      if ((det.iface.toLowerCase() === ifaceSanitized.toLowerCase() || det.mac.toLowerCase() === ifaceSanitized.toLowerCase() || det.ip4.toLowerCase() === ifaceSanitized.toLowerCase() || det.ip6.toLowerCase() === ifaceSanitized.toLowerCase() || det.ifaceName.replace(/[()[\] ]+/g, "").replace(/#|\//g, "_").toLowerCase() === ifaceSanitized.replace(/[()[\] ]+/g, "").replace("#", "_").toLowerCase()) && det.ifaceName.replace(/[()[\] ]+/g, "").replace(/#|\//g, "_").toLowerCase() === detail.name) {
                        ifaceName = det.iface;
                        rx_bytes = detail.rx_bytes;
                        rx_dropped = detail.rx_dropped;
                        rx_errors = detail.rx_errors;
                        tx_bytes = detail.tx_bytes;
                        tx_dropped = detail.tx_dropped;
                        tx_errors = detail.tx_errors;
                        operstate = det.operstate;
                      }
                    });
                  });
                  if (rx_bytes && tx_bytes) {
                    result2 = calcNetworkSpeed(ifaceName, parseInt(rx_bytes), parseInt(tx_bytes), operstate, rx_dropped, rx_errors, tx_dropped, tx_errors);
                  }
                  resolve(result2);
                });
              });
            }
          } else {
            result2.rx_bytes = _network[ifaceSanitized].rx_bytes;
            result2.tx_bytes = _network[ifaceSanitized].tx_bytes;
            result2.rx_sec = _network[ifaceSanitized].rx_sec;
            result2.tx_sec = _network[ifaceSanitized].tx_sec;
            result2.ms = _network[ifaceSanitized].last_ms;
            result2.operstate = _network[ifaceSanitized].operstate;
            resolve(result2);
          }
        });
      });
    }
    exports2.networkStats = networkStats;
    function getProcessName(processes, pid) {
      let cmd = "";
      processes.forEach((line) => {
        const parts = line.split(" ");
        const id = parseInt(parts[0], 10) || -1;
        if (id === pid) {
          parts.shift();
          cmd = parts.join(" ").split(":")[0];
        }
      });
      cmd = cmd.split(" -")[0];
      cmd = cmd.split(" /")[0];
      return cmd;
    }
    function networkConnections(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = [];
          if (_linux || _freebsd || _openbsd || _netbsd) {
            let cmd = 'export LC_ALL=C; netstat -tunap | grep "ESTABLISHED\\|SYN_SENT\\|SYN_RECV\\|FIN_WAIT1\\|FIN_WAIT2\\|TIME_WAIT\\|CLOSE\\|CLOSE_WAIT\\|LAST_ACK\\|LISTEN\\|CLOSING\\|UNKNOWN"; unset LC_ALL';
            if (_freebsd || _openbsd || _netbsd) {
              cmd = 'export LC_ALL=C; netstat -na | grep "ESTABLISHED\\|SYN_SENT\\|SYN_RECV\\|FIN_WAIT1\\|FIN_WAIT2\\|TIME_WAIT\\|CLOSE\\|CLOSE_WAIT\\|LAST_ACK\\|LISTEN\\|CLOSING\\|UNKNOWN"; unset LC_ALL';
            }
            exec(cmd, { maxBuffer: 1024 * 2e4 }, function(error, stdout) {
              let lines = stdout.toString().split("\n");
              if (!error && (lines.length > 1 || lines[0] != "")) {
                lines.forEach(function(line) {
                  line = line.replace(/ +/g, " ").split(" ");
                  if (line.length >= 7) {
                    let localip = line[3];
                    let localport = "";
                    let localaddress = line[3].split(":");
                    if (localaddress.length > 1) {
                      localport = localaddress[localaddress.length - 1];
                      localaddress.pop();
                      localip = localaddress.join(":");
                    }
                    let peerip = line[4];
                    let peerport = "";
                    let peeraddress = line[4].split(":");
                    if (peeraddress.length > 1) {
                      peerport = peeraddress[peeraddress.length - 1];
                      peeraddress.pop();
                      peerip = peeraddress.join(":");
                    }
                    let connstate = line[5];
                    let proc = line[6].split("/");
                    if (connstate) {
                      result2.push({
                        protocol: line[0],
                        localAddress: localip,
                        localPort: localport,
                        peerAddress: peerip,
                        peerPort: peerport,
                        state: connstate,
                        pid: proc[0] && proc[0] !== "-" ? parseInt(proc[0], 10) : null,
                        process: proc[1] ? proc[1].split(" ")[0].split(":")[0] : ""
                      });
                    }
                  }
                });
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              } else {
                cmd = 'ss -tunap | grep "ESTAB\\|SYN-SENT\\|SYN-RECV\\|FIN-WAIT1\\|FIN-WAIT2\\|TIME-WAIT\\|CLOSE\\|CLOSE-WAIT\\|LAST-ACK\\|LISTEN\\|CLOSING"';
                exec(cmd, { maxBuffer: 1024 * 2e4 }, function(error2, stdout2) {
                  if (!error2) {
                    let lines2 = stdout2.toString().split("\n");
                    lines2.forEach(function(line) {
                      line = line.replace(/ +/g, " ").split(" ");
                      if (line.length >= 6) {
                        let localip = line[4];
                        let localport = "";
                        let localaddress = line[4].split(":");
                        if (localaddress.length > 1) {
                          localport = localaddress[localaddress.length - 1];
                          localaddress.pop();
                          localip = localaddress.join(":");
                        }
                        let peerip = line[5];
                        let peerport = "";
                        let peeraddress = line[5].split(":");
                        if (peeraddress.length > 1) {
                          peerport = peeraddress[peeraddress.length - 1];
                          peeraddress.pop();
                          peerip = peeraddress.join(":");
                        }
                        let connstate = line[1];
                        if (connstate === "ESTAB") {
                          connstate = "ESTABLISHED";
                        }
                        if (connstate === "TIME-WAIT") {
                          connstate = "TIME_WAIT";
                        }
                        let pid = null;
                        let process2 = "";
                        if (line.length >= 7 && line[6].indexOf("users:") > -1) {
                          let proc = line[6].replace('users:(("', "").replace(/"/g, "").split(",");
                          if (proc.length > 2) {
                            process2 = proc[0].split(" ")[0].split(":")[0];
                            pid = parseInt(proc[1], 10);
                          }
                        }
                        if (connstate) {
                          result2.push({
                            protocol: line[0],
                            localAddress: localip,
                            localPort: localport,
                            peerAddress: peerip,
                            peerPort: peerport,
                            state: connstate,
                            pid,
                            process: process2
                          });
                        }
                      }
                    });
                  }
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                });
              }
            });
          }
          if (_darwin) {
            let cmd = 'netstat -natvln | head -n2; netstat -natvln | grep "tcp4\\|tcp6\\|udp4\\|udp6"';
            const states = "ESTABLISHED|SYN_SENT|SYN_RECV|FIN_WAIT1|FIN_WAIT_1|FIN_WAIT2|FIN_WAIT_2|TIME_WAIT|CLOSE|CLOSE_WAIT|LAST_ACK|LISTEN|CLOSING|UNKNOWN".split("|");
            exec(cmd, { maxBuffer: 1024 * 2e4 }, function(error, stdout) {
              if (!error) {
                exec("ps -axo pid,command", { maxBuffer: 1024 * 2e4 }, function(err2, stdout2) {
                  let processes = stdout2.toString().split("\n");
                  processes = processes.map((line) => {
                    return line.trim().replace(/ +/g, " ");
                  });
                  let lines = stdout.toString().split("\n");
                  lines.shift();
                  let pidPos = 8;
                  if (lines.length > 1 && lines[0].indexOf("pid") > 0) {
                    const header = (lines.shift() || "").replace(/ Address/g, "_Address").replace(/ +/g, " ").split(" ");
                    pidPos = header.indexOf("pid");
                  }
                  lines.forEach(function(line) {
                    line = line.replace(/ +/g, " ").split(" ");
                    if (line.length >= 8) {
                      let localip = line[3];
                      let localport = "";
                      let localaddress = line[3].split(".");
                      if (localaddress.length > 1) {
                        localport = localaddress[localaddress.length - 1];
                        localaddress.pop();
                        localip = localaddress.join(".");
                      }
                      let peerip = line[4];
                      let peerport = "";
                      let peeraddress = line[4].split(".");
                      if (peeraddress.length > 1) {
                        peerport = peeraddress[peeraddress.length - 1];
                        peeraddress.pop();
                        peerip = peeraddress.join(".");
                      }
                      const hasState = states.indexOf(line[5]) >= 0;
                      let connstate = hasState ? line[5] : "UNKNOWN";
                      let pid = parseInt(line[pidPos + (hasState ? 0 : -1)], 10);
                      if (connstate) {
                        result2.push({
                          protocol: line[0],
                          localAddress: localip,
                          localPort: localport,
                          peerAddress: peerip,
                          peerPort: peerport,
                          state: connstate,
                          pid,
                          process: getProcessName(processes, pid)
                        });
                      }
                    }
                  });
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                });
              }
            });
          }
          if (_windows) {
            let cmd = "netstat -nao";
            try {
              exec(cmd, util.execOptsWin, function(error, stdout) {
                if (!error) {
                  let lines = stdout.toString().split("\r\n");
                  lines.forEach(function(line) {
                    line = line.trim().replace(/ +/g, " ").split(" ");
                    if (line.length >= 4) {
                      let localip = line[1];
                      let localport = "";
                      let localaddress = line[1].split(":");
                      if (localaddress.length > 1) {
                        localport = localaddress[localaddress.length - 1];
                        localaddress.pop();
                        localip = localaddress.join(":");
                      }
                      localip = localip.replace(/\[/g, "").replace(/\]/g, "");
                      let peerip = line[2];
                      let peerport = "";
                      let peeraddress = line[2].split(":");
                      if (peeraddress.length > 1) {
                        peerport = peeraddress[peeraddress.length - 1];
                        peeraddress.pop();
                        peerip = peeraddress.join(":");
                      }
                      peerip = peerip.replace(/\[/g, "").replace(/\]/g, "");
                      let pid = util.toInt(line[4]);
                      let connstate = line[3];
                      if (connstate === "HERGESTELLT") {
                        connstate = "ESTABLISHED";
                      }
                      if (connstate.startsWith("ABH")) {
                        connstate = "LISTEN";
                      }
                      if (connstate === "SCHLIESSEN_WARTEN") {
                        connstate = "CLOSE_WAIT";
                      }
                      if (connstate === "WARTEND") {
                        connstate = "TIME_WAIT";
                      }
                      if (connstate === "SYN_GESENDET") {
                        connstate = "SYN_SENT";
                      }
                      if (connstate === "LISTENING") {
                        connstate = "LISTEN";
                      }
                      if (connstate === "SYN_RECEIVED") {
                        connstate = "SYN_RECV";
                      }
                      if (connstate === "FIN_WAIT_1") {
                        connstate = "FIN_WAIT1";
                      }
                      if (connstate === "FIN_WAIT_2") {
                        connstate = "FIN_WAIT2";
                      }
                      if (line[0].toLowerCase() !== "udp" && connstate) {
                        result2.push({
                          protocol: line[0].toLowerCase(),
                          localAddress: localip,
                          localPort: localport,
                          peerAddress: peerip,
                          peerPort: peerport,
                          state: connstate,
                          pid,
                          process: ""
                        });
                      } else if (line[0].toLowerCase() === "udp") {
                        result2.push({
                          protocol: line[0].toLowerCase(),
                          localAddress: localip,
                          localPort: localport,
                          peerAddress: peerip,
                          peerPort: peerport,
                          state: "",
                          pid: parseInt(line[3], 10),
                          process: ""
                        });
                      }
                    }
                  });
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                }
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    }
    exports2.networkConnections = networkConnections;
    function networkGatewayDefault(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = "";
          if (_linux || _freebsd || _openbsd || _netbsd) {
            let cmd = "ip route get 1";
            try {
              exec(cmd, { maxBuffer: 1024 * 2e4 }, function(error, stdout) {
                if (!error) {
                  let lines = stdout.toString().split("\n");
                  const line = lines && lines[0] ? lines[0] : "";
                  let parts = line.split(" via ");
                  if (parts && parts[1]) {
                    parts = parts[1].split(" ");
                    result2 = parts[0];
                  }
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                } else {
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                }
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
          if (_darwin) {
            let cmd = "route -n get default";
            try {
              exec(cmd, { maxBuffer: 1024 * 2e4 }, function(error, stdout) {
                if (!error) {
                  const lines = stdout.toString().split("\n").map((line) => line.trim());
                  result2 = util.getValue(lines, "gateway");
                }
                if (!result2) {
                  cmd = "netstat -rn | awk '/default/ {print $2}'";
                  exec(cmd, { maxBuffer: 1024 * 2e4 }, function(error2, stdout2) {
                    const lines = stdout2.toString().split("\n").map((line) => line.trim());
                    result2 = lines.find((line) => /^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/.test(line));
                    if (callback) {
                      callback(result2);
                    }
                    resolve(result2);
                  });
                } else {
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                }
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
          if (_windows) {
            try {
              exec("netstat -r", util.execOptsWin, function(error, stdout) {
                const lines = stdout.toString().split(os.EOL);
                lines.forEach((line) => {
                  line = line.replace(/\s+/g, " ").trim();
                  if (line.indexOf("0.0.0.0 0.0.0.0") > -1 && !/[a-zA-Z]/.test(line)) {
                    const parts = line.split(" ");
                    if (parts.length >= 5 && parts[parts.length - 3].indexOf(".") > -1) {
                      result2 = parts[parts.length - 3];
                    }
                  }
                });
                if (!result2) {
                  util.powerShell("Get-CimInstance -ClassName Win32_IP4RouteTable | Where-Object { $_.Destination -eq '0.0.0.0' -and $_.Mask -eq '0.0.0.0' }").then((data) => {
                    let lines2 = data.toString().split("\r\n");
                    if (lines2.length > 1 && !result2) {
                      result2 = util.getValue(lines2, "NextHop");
                      if (callback) {
                        callback(result2);
                      }
                      resolve(result2);
                    }
                  });
                } else {
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                }
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    }
    exports2.networkGatewayDefault = networkGatewayDefault;
  }
});

// node_modules/systeminformation/lib/wifi.js
var require_wifi = __commonJS({
  "node_modules/systeminformation/lib/wifi.js"(exports2) {
    "use strict";
    var os = require("os");
    var exec = require("child_process").exec;
    var execSync = require("child_process").execSync;
    var util = require_util();
    var _platform = process.platform;
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    function wifiDBFromQuality(quality) {
      const qual = parseFloat(quality);
      if (qual < 0) {
        return 0;
      }
      if (qual >= 100) {
        return -50;
      }
      return qual / 2 - 100;
    }
    function wifiQualityFromDB(db) {
      const result2 = 2 * (parseFloat(db) + 100);
      return result2 <= 100 ? result2 : 100;
    }
    var _wifi_frequencies = {
      1: 2412,
      2: 2417,
      3: 2422,
      4: 2427,
      5: 2432,
      6: 2437,
      7: 2442,
      8: 2447,
      9: 2452,
      10: 2457,
      11: 2462,
      12: 2467,
      13: 2472,
      14: 2484,
      32: 5160,
      34: 5170,
      36: 5180,
      38: 5190,
      40: 5200,
      42: 5210,
      44: 5220,
      46: 5230,
      48: 5240,
      50: 5250,
      52: 5260,
      54: 5270,
      56: 5280,
      58: 5290,
      60: 5300,
      62: 5310,
      64: 5320,
      68: 5340,
      96: 5480,
      100: 5500,
      102: 5510,
      104: 5520,
      106: 5530,
      108: 5540,
      110: 5550,
      112: 5560,
      114: 5570,
      116: 5580,
      118: 5590,
      120: 5600,
      122: 5610,
      124: 5620,
      126: 5630,
      128: 5640,
      132: 5660,
      134: 5670,
      136: 5680,
      138: 5690,
      140: 5700,
      142: 5710,
      144: 5720,
      149: 5745,
      151: 5755,
      153: 5765,
      155: 5775,
      157: 5785,
      159: 5795,
      161: 5805,
      165: 5825,
      169: 5845,
      173: 5865,
      183: 4915,
      184: 4920,
      185: 4925,
      187: 4935,
      188: 4940,
      189: 4945,
      192: 4960,
      196: 4980
    };
    function wifiFrequencyFromChannel(channel) {
      return {}.hasOwnProperty.call(_wifi_frequencies, channel) ? _wifi_frequencies[channel] : null;
    }
    function wifiChannelFromFrequencs(frequency) {
      let channel = 0;
      for (let key in _wifi_frequencies) {
        if ({}.hasOwnProperty.call(_wifi_frequencies, key)) {
          if (_wifi_frequencies[key] === frequency) {
            channel = util.toInt(key);
          }
        }
      }
      return channel;
    }
    function ifaceListLinux() {
      const result2 = [];
      const cmd = "iw dev 2>/dev/null";
      try {
        const all = execSync(cmd, util.execOptsLinux).toString().split("\n").map((line) => line.trim()).join("\n");
        const parts = all.split("\nInterface ");
        parts.shift();
        parts.forEach((ifaceDetails) => {
          const lines = ifaceDetails.split("\n");
          const iface = lines[0];
          const id = util.toInt(util.getValue(lines, "ifindex", " "));
          const mac = util.getValue(lines, "addr", " ");
          const channel = util.toInt(util.getValue(lines, "channel", " "));
          result2.push({
            id,
            iface,
            mac,
            channel
          });
        });
        return result2;
      } catch (e) {
        try {
          const all = execSync("nmcli -t -f general,wifi-properties,wired-properties,interface-flags,capabilities,nsp device show 2>/dev/null", util.execOptsLinux).toString();
          const parts = all.split("\n\n");
          let i = 1;
          parts.forEach((ifaceDetails) => {
            const lines = ifaceDetails.split("\n");
            const iface = util.getValue(lines, "GENERAL.DEVICE");
            const type = util.getValue(lines, "GENERAL.TYPE");
            const id = i++;
            const mac = util.getValue(lines, "GENERAL.HWADDR");
            const channel = "";
            if (type.toLowerCase() === "wifi") {
              result2.push({
                id,
                iface,
                mac,
                channel
              });
            }
          });
          return result2;
        } catch (e2) {
          return [];
        }
      }
    }
    function nmiDeviceLinux(iface) {
      const cmd = `nmcli -t -f general,wifi-properties,capabilities,ip4,ip6 device show ${iface} 2> /dev/null`;
      try {
        const lines = execSync(cmd, util.execOptsLinux).toString().split("\n");
        const ssid = util.getValue(lines, "GENERAL.CONNECTION");
        return {
          iface,
          type: util.getValue(lines, "GENERAL.TYPE"),
          vendor: util.getValue(lines, "GENERAL.VENDOR"),
          product: util.getValue(lines, "GENERAL.PRODUCT"),
          mac: util.getValue(lines, "GENERAL.HWADDR").toLowerCase(),
          ssid: ssid !== "--" ? ssid : null
        };
      } catch (e) {
        return {};
      }
    }
    function nmiConnectionLinux(ssid) {
      const cmd = `nmcli -t --show-secrets connection show ${ssid} 2>/dev/null`;
      try {
        const lines = execSync(cmd, util.execOptsLinux).toString().split("\n");
        const bssid = util.getValue(lines, "802-11-wireless.seen-bssids").toLowerCase();
        return {
          ssid: ssid !== "--" ? ssid : null,
          uuid: util.getValue(lines, "connection.uuid"),
          type: util.getValue(lines, "connection.type"),
          autoconnect: util.getValue(lines, "connection.autoconnect") === "yes",
          security: util.getValue(lines, "802-11-wireless-security.key-mgmt"),
          bssid: bssid !== "--" ? bssid : null
        };
      } catch (e) {
        return {};
      }
    }
    function wpaConnectionLinux(iface) {
      if (!iface) {
        return {};
      }
      const cmd = `wpa_cli -i ${iface} status 2>&1`;
      try {
        const lines = execSync(cmd, util.execOptsLinux).toString().split("\n");
        const freq = util.toInt(util.getValue(lines, "freq", "="));
        return {
          ssid: util.getValue(lines, "ssid", "="),
          uuid: util.getValue(lines, "uuid", "="),
          security: util.getValue(lines, "key_mgmt", "="),
          freq,
          channel: wifiChannelFromFrequencs(freq),
          bssid: util.getValue(lines, "bssid", "=").toLowerCase()
        };
      } catch (e) {
        return {};
      }
    }
    function getWifiNetworkListNmi() {
      const result2 = [];
      const cmd = "nmcli -t -m multiline --fields active,ssid,bssid,mode,chan,freq,signal,security,wpa-flags,rsn-flags device wifi list 2>/dev/null";
      try {
        const stdout = execSync(cmd, util.execOptsLinux);
        const parts = stdout.toString().split("ACTIVE:");
        parts.shift();
        parts.forEach((part) => {
          part = "ACTIVE:" + part;
          const lines = part.split(os.EOL);
          const channel = util.getValue(lines, "CHAN");
          const frequency = util.getValue(lines, "FREQ").toLowerCase().replace("mhz", "").trim();
          const security = util.getValue(lines, "SECURITY").replace("(", "").replace(")", "");
          const wpaFlags = util.getValue(lines, "WPA-FLAGS").replace("(", "").replace(")", "");
          const rsnFlags = util.getValue(lines, "RSN-FLAGS").replace("(", "").replace(")", "");
          const quality = util.getValue(lines, "SIGNAL");
          result2.push({
            ssid: util.getValue(lines, "SSID"),
            bssid: util.getValue(lines, "BSSID").toLowerCase(),
            mode: util.getValue(lines, "MODE"),
            channel: channel ? parseInt(channel, 10) : null,
            frequency: frequency ? parseInt(frequency, 10) : null,
            signalLevel: wifiDBFromQuality(quality),
            quality: quality ? parseInt(quality, 10) : null,
            security: security && security !== "none" ? security.split(" ") : [],
            wpaFlags: wpaFlags && wpaFlags !== "none" ? wpaFlags.split(" ") : [],
            rsnFlags: rsnFlags && rsnFlags !== "none" ? rsnFlags.split(" ") : []
          });
        });
        return result2;
      } catch (e) {
        return [];
      }
    }
    function getWifiNetworkListIw(iface) {
      const result2 = [];
      try {
        let iwlistParts = execSync(`export LC_ALL=C; iwlist ${iface} scan 2>&1; unset LC_ALL`, util.execOptsLinux).toString().split("        Cell ");
        if (iwlistParts[0].indexOf("resource busy") >= 0) {
          return -1;
        }
        if (iwlistParts.length > 1) {
          iwlistParts.shift();
          iwlistParts.forEach((element) => {
            const lines = element.split("\n");
            const channel = util.getValue(lines, "channel", ":", true);
            const address = lines && lines.length && lines[0].indexOf("Address:") >= 0 ? lines[0].split("Address:")[1].trim().toLowerCase() : "";
            const mode = util.getValue(lines, "mode", ":", true);
            const frequency = util.getValue(lines, "frequency", ":", true);
            const qualityString = util.getValue(lines, "Quality", "=", true);
            const dbParts = qualityString.toLowerCase().split("signal level=");
            const db = dbParts.length > 1 ? util.toInt(dbParts[1]) : 0;
            const quality = db ? wifiQualityFromDB(db) : 0;
            const ssid = util.getValue(lines, "essid", ":", true);
            const isWpa = element.indexOf(" WPA ") >= 0;
            const isWpa2 = element.indexOf("WPA2 ") >= 0;
            const security = [];
            if (isWpa) {
              security.push("WPA");
            }
            if (isWpa2) {
              security.push("WPA2");
            }
            const wpaFlags = [];
            let wpaFlag = "";
            lines.forEach(function(line) {
              const l = line.trim().toLowerCase();
              if (l.indexOf("group cipher") >= 0) {
                if (wpaFlag) {
                  wpaFlags.push(wpaFlag);
                }
                const parts = l.split(":");
                if (parts.length > 1) {
                  wpaFlag = parts[1].trim().toUpperCase();
                }
              }
              if (l.indexOf("pairwise cipher") >= 0) {
                const parts = l.split(":");
                if (parts.length > 1) {
                  if (parts[1].indexOf("tkip")) {
                    wpaFlag = wpaFlag ? "TKIP/" + wpaFlag : "TKIP";
                  } else if (parts[1].indexOf("ccmp")) {
                    wpaFlag = wpaFlag ? "CCMP/" + wpaFlag : "CCMP";
                  } else if (parts[1].indexOf("proprietary")) {
                    wpaFlag = wpaFlag ? "PROP/" + wpaFlag : "PROP";
                  }
                }
              }
              if (l.indexOf("authentication suites") >= 0) {
                const parts = l.split(":");
                if (parts.length > 1) {
                  if (parts[1].indexOf("802.1x")) {
                    wpaFlag = wpaFlag ? "802.1x/" + wpaFlag : "802.1x";
                  } else if (parts[1].indexOf("psk")) {
                    wpaFlag = wpaFlag ? "PSK/" + wpaFlag : "PSK";
                  }
                }
              }
            });
            if (wpaFlag) {
              wpaFlags.push(wpaFlag);
            }
            result2.push({
              ssid,
              bssid: address,
              mode,
              channel: channel ? util.toInt(channel) : null,
              frequency: frequency ? util.toInt(frequency.replace(".", "")) : null,
              signalLevel: db,
              quality,
              security,
              wpaFlags,
              rsnFlags: []
            });
          });
        }
        return result2;
      } catch (e) {
        return -1;
      }
    }
    function parseWifiDarwin(wifiStr) {
      const result2 = [];
      try {
        let wifiObj = JSON.parse(wifiStr);
        wifiObj = wifiObj.SPAirPortDataType[0].spairport_airport_interfaces[0].spairport_airport_other_local_wireless_networks;
        wifiObj.forEach(function(wifiItem) {
          let security = [];
          const sm = wifiItem.spairport_security_mode || "";
          if (sm === "spairport_security_mode_wep") {
            security.push("WEP");
          } else if (sm === "spairport_security_mode_wpa2_personal") {
            security.push("WPA2");
          } else if (sm.startsWith("spairport_security_mode_wpa2_enterprise")) {
            security.push("WPA2 EAP");
          } else if (sm.startsWith("pairport_security_mode_wpa3_transition")) {
            security.push("WPA2/WPA3");
          } else if (sm.startsWith("pairport_security_mode_wpa3")) {
            security.push("WPA3");
          }
          const channel = parseInt(("" + wifiItem.spairport_network_channel).split(" ")[0]) || 0;
          const signalLevel = wifiItem.spairport_signal_noise || null;
          result2.push({
            ssid: wifiItem._name || "",
            bssid: wifiItem.spairport_network_bssid || null,
            mode: wifiItem.spairport_network_phymode,
            channel,
            frequency: wifiFrequencyFromChannel(channel),
            signalLevel: signalLevel ? parseInt(signalLevel, 10) : null,
            quality: wifiQualityFromDB(signalLevel),
            security,
            wpaFlags: [],
            rsnFlags: []
          });
        });
        return result2;
      } catch (e) {
        return result2;
      }
    }
    function wifiNetworks(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = [];
          if (_linux) {
            result2 = getWifiNetworkListNmi();
            if (result2.length === 0) {
              try {
                const iwconfigParts = execSync("export LC_ALL=C; iwconfig 2>/dev/null; unset LC_ALL", util.execOptsLinux).toString().split("\n\n");
                let iface = "";
                iwconfigParts.forEach((element) => {
                  if (element.indexOf("no wireless") === -1 && element.trim() !== "") {
                    iface = element.split(" ")[0];
                  }
                });
                if (iface) {
                  let ifaceSanitized = "";
                  const s = util.isPrototypePolluted() ? "---" : util.sanitizeShellString(iface, true);
                  const l = util.mathMin(s.length, 2e3);
                  for (let i = 0; i <= l; i++) {
                    if (s[i] !== void 0) {
                      ifaceSanitized = ifaceSanitized + s[i];
                    }
                  }
                  const res = getWifiNetworkListIw(ifaceSanitized);
                  if (res === -1) {
                    setTimeout(function(iface2) {
                      const res2 = getWifiNetworkListIw(iface2);
                      if (res2 != -1) {
                        result2 = res2;
                      }
                      if (callback) {
                        callback(result2);
                      }
                      resolve(result2);
                    }, 4e3);
                  } else {
                    result2 = res;
                    if (callback) {
                      callback(result2);
                    }
                    resolve(result2);
                  }
                } else {
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                }
              } catch (e) {
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              }
            } else {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          } else if (_darwin) {
            let cmd = "system_profiler SPAirPortDataType -json 2>/dev/null";
            exec(cmd, { maxBuffer: 1024 * 4e4 }, function(error, stdout) {
              result2 = parseWifiDarwin(stdout.toString());
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          } else if (_windows) {
            let cmd = "netsh wlan show networks mode=Bssid";
            util.powerShell(cmd).then((stdout) => {
              const ssidParts = stdout.toString("utf8").split(os.EOL + os.EOL + "SSID ");
              ssidParts.shift();
              ssidParts.forEach((ssidPart) => {
                const ssidLines = ssidPart.split(os.EOL);
                if (ssidLines && ssidLines.length >= 8 && ssidLines[0].indexOf(":") >= 0) {
                  const bssidsParts = ssidPart.split(" BSSID");
                  bssidsParts.shift();
                  bssidsParts.forEach((bssidPart) => {
                    const bssidLines = bssidPart.split(os.EOL);
                    const bssidLine = bssidLines[0].split(":");
                    bssidLine.shift();
                    const bssid = bssidLine.join(":").trim().toLowerCase();
                    const channel = bssidLines[3].split(":").pop().trim();
                    const quality = bssidLines[1].split(":").pop().trim();
                    result2.push({
                      ssid: ssidLines[0].split(":").pop().trim(),
                      bssid,
                      mode: "",
                      channel: channel ? parseInt(channel, 10) : null,
                      frequency: wifiFrequencyFromChannel(channel),
                      signalLevel: wifiDBFromQuality(quality),
                      quality: quality ? parseInt(quality, 10) : null,
                      security: [ssidLines[2].split(":").pop().trim()],
                      wpaFlags: [ssidLines[3].split(":").pop().trim()],
                      rsnFlags: []
                    });
                  });
                }
              });
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          } else {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
        });
      });
    }
    exports2.wifiNetworks = wifiNetworks;
    function getVendor(model) {
      model = model.toLowerCase();
      let result2 = "";
      if (model.indexOf("intel") >= 0) {
        result2 = "Intel";
      } else if (model.indexOf("realtek") >= 0) {
        result2 = "Realtek";
      } else if (model.indexOf("qualcom") >= 0) {
        result2 = "Qualcom";
      } else if (model.indexOf("broadcom") >= 0) {
        result2 = "Broadcom";
      } else if (model.indexOf("cavium") >= 0) {
        result2 = "Cavium";
      } else if (model.indexOf("cisco") >= 0) {
        result2 = "Cisco";
      } else if (model.indexOf("marvel") >= 0) {
        result2 = "Marvel";
      } else if (model.indexOf("zyxel") >= 0) {
        result2 = "Zyxel";
      } else if (model.indexOf("melanox") >= 0) {
        result2 = "Melanox";
      } else if (model.indexOf("d-link") >= 0) {
        result2 = "D-Link";
      } else if (model.indexOf("tp-link") >= 0) {
        result2 = "TP-Link";
      } else if (model.indexOf("asus") >= 0) {
        result2 = "Asus";
      } else if (model.indexOf("linksys") >= 0) {
        result2 = "Linksys";
      }
      return result2;
    }
    function wifiConnections(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          const result2 = [];
          if (_linux) {
            const ifaces = ifaceListLinux();
            const networkList = getWifiNetworkListNmi();
            ifaces.forEach((ifaceDetail) => {
              let ifaceSanitized = "";
              const s = util.isPrototypePolluted() ? "---" : util.sanitizeShellString(ifaceDetail.iface, true);
              const ll = util.mathMin(s.length, 2e3);
              for (let i = 0; i <= ll; i++) {
                if (s[i] !== void 0) {
                  ifaceSanitized = ifaceSanitized + s[i];
                }
              }
              const nmiDetails = nmiDeviceLinux(ifaceSanitized);
              const wpaDetails = wpaConnectionLinux(ifaceSanitized);
              const ssid = nmiDetails.ssid || wpaDetails.ssid;
              const network = networkList.filter((nw) => nw.ssid === ssid);
              let ssidSanitized = "";
              const t = util.isPrototypePolluted() ? "---" : util.sanitizeShellString(ssid, true);
              const l = util.mathMin(t.length, 32);
              for (let i = 0; i <= l; i++) {
                if (t[i] !== void 0) {
                  ssidSanitized = ssidSanitized + t[i];
                }
              }
              const nmiConnection = nmiConnectionLinux(ssidSanitized);
              const channel = network && network.length && network[0].channel ? network[0].channel : wpaDetails.channel ? wpaDetails.channel : null;
              const bssid = network && network.length && network[0].bssid ? network[0].bssid : wpaDetails.bssid ? wpaDetails.bssid : null;
              const signalLevel = network && network.length && network[0].signalLevel ? network[0].signalLevel : null;
              if (ssid && bssid) {
                result2.push({
                  id: ifaceDetail.id,
                  iface: ifaceDetail.iface,
                  model: nmiDetails.product,
                  ssid,
                  bssid: network && network.length && network[0].bssid ? network[0].bssid : wpaDetails.bssid ? wpaDetails.bssid : null,
                  channel,
                  frequency: channel ? wifiFrequencyFromChannel(channel) : null,
                  type: nmiConnection.type ? nmiConnection.type : "802.11",
                  security: nmiConnection.security ? nmiConnection.security : wpaDetails.security ? wpaDetails.security : null,
                  signalLevel,
                  quality: wifiQualityFromDB(signalLevel),
                  txRate: null
                });
              }
            });
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          } else if (_darwin) {
            let cmd = 'system_profiler SPNetworkDataType SPAirPortDataType -xml 2>/dev/null; echo "######" ; ioreg -n AppleBCMWLANSkywalkInterface -r 2>/dev/null';
            exec(cmd, function(error, stdout) {
              try {
                const parts = stdout.toString().split("######");
                const profilerObj = util.plistParser(parts[0]);
                const networkObj = profilerObj[0]._SPCommandLineArguments.indexOf("SPNetworkDataType") >= 0 ? profilerObj[0]._items : profilerObj[1]._items;
                const airportObj = profilerObj[0]._SPCommandLineArguments.indexOf("SPAirPortDataType") >= 0 ? profilerObj[0]._items[0].spairport_airport_interfaces : profilerObj[1]._items[0].spairport_airport_interfaces;
                let lines3 = [];
                if (parts[1].indexOf("  | {") > 0 && parts[1].indexOf("  | }") > parts[1].indexOf("  | {")) {
                  lines3 = parts[1].split("  | {")[1].split("  | }")[0].replace(/ \| /g, "").replace(/"/g, "").split("\n");
                }
                const networkWifiObj = networkObj.find((item) => {
                  return item._name === "Wi-Fi";
                });
                const airportWifiObj = airportObj[0].spairport_current_network_information;
                const channel = parseInt(("" + airportWifiObj.spairport_network_channel).split(" ")[0]) || 0;
                const signalLevel = airportWifiObj.spairport_signal_noise || null;
                let security = [];
                const sm = airportWifiObj.spairport_security_mode || "";
                if (sm === "spairport_security_mode_wep") {
                  security.push("WEP");
                } else if (sm === "spairport_security_mode_wpa2_personal") {
                  security.push("WPA2");
                } else if (sm.startsWith("spairport_security_mode_wpa2_enterprise")) {
                  security.push("WPA2 EAP");
                } else if (sm.startsWith("pairport_security_mode_wpa3_transition")) {
                  security.push("WPA2/WPA3");
                } else if (sm.startsWith("pairport_security_mode_wpa3")) {
                  security.push("WPA3");
                }
                result2.push({
                  id: networkWifiObj._name || "Wi-Fi",
                  iface: networkWifiObj.interface || "",
                  model: networkWifiObj.hardware || "",
                  ssid: airportWifiObj._name || "",
                  bssid: airportWifiObj.spairport_network_bssid || "",
                  channel,
                  frequency: channel ? wifiFrequencyFromChannel(channel) : null,
                  type: airportWifiObj.spairport_network_phymode || "802.11",
                  security,
                  signalLevel: signalLevel ? parseInt(signalLevel, 10) : null,
                  quality: wifiQualityFromDB(signalLevel),
                  txRate: airportWifiObj.spairport_network_rate || null
                });
              } catch (e) {
                util.noop();
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          } else if (_windows) {
            let cmd = "netsh wlan show interfaces";
            util.powerShell(cmd).then(function(stdout) {
              const allLines = stdout.toString().split("\r\n");
              for (let i = 0; i < allLines.length; i++) {
                allLines[i] = allLines[i].trim();
              }
              const parts = allLines.join("\r\n").split(":\r\n\r\n");
              parts.shift();
              parts.forEach((part) => {
                const lines = part.split("\r\n");
                if (lines.length >= 5) {
                  const iface = lines[0].indexOf(":") >= 0 ? lines[0].split(":")[1].trim() : "";
                  const model = lines[1].indexOf(":") >= 0 ? lines[1].split(":")[1].trim() : "";
                  const id = lines[2].indexOf(":") >= 0 ? lines[2].split(":")[1].trim() : "";
                  const ssid = util.getValue(lines, "SSID", ":", true);
                  const bssid = util.getValue(lines, "BSSID", ":", true) || util.getValue(lines, "AP BSSID", ":", true);
                  const quality = util.getValue(lines, "Signal", ":", true);
                  const signalLevel = wifiDBFromQuality(quality);
                  const type = util.getValue(lines, "Radio type", ":", true) || util.getValue(lines, "Type de radio", ":", true) || util.getValue(lines, "Funktyp", ":", true) || null;
                  const security = util.getValue(lines, "authentication", ":", true) || util.getValue(lines, "Authentification", ":", true) || util.getValue(lines, "Authentifizierung", ":", true) || null;
                  const channel = util.getValue(lines, "Channel", ":", true) || util.getValue(lines, "Canal", ":", true) || util.getValue(lines, "Kanal", ":", true) || null;
                  const txRate = util.getValue(lines, "Transmit rate (mbps)", ":", true) || util.getValue(lines, "Transmission (mbit/s)", ":", true) || util.getValue(lines, "Empfangsrate (MBit/s)", ":", true) || null;
                  if (model && id && ssid && bssid) {
                    result2.push({
                      id,
                      iface,
                      model,
                      ssid,
                      bssid,
                      channel: util.toInt(channel),
                      frequency: channel ? wifiFrequencyFromChannel(channel) : null,
                      type,
                      security,
                      signalLevel,
                      quality: quality ? parseInt(quality, 10) : null,
                      txRate: util.toInt(txRate) || null
                    });
                  }
                }
              });
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          } else {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
        });
      });
    }
    exports2.wifiConnections = wifiConnections;
    function wifiInterfaces(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          const result2 = [];
          if (_linux) {
            const ifaces = ifaceListLinux();
            ifaces.forEach((ifaceDetail) => {
              const nmiDetails = nmiDeviceLinux(ifaceDetail.iface);
              result2.push({
                id: ifaceDetail.id,
                iface: ifaceDetail.iface,
                model: nmiDetails.product ? nmiDetails.product : null,
                vendor: nmiDetails.vendor ? nmiDetails.vendor : null,
                mac: ifaceDetail.mac
              });
            });
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          } else if (_darwin) {
            let cmd = "system_profiler SPNetworkDataType";
            exec(cmd, function(error, stdout) {
              const parts1 = stdout.toString().split("\n\n    Wi-Fi:\n\n");
              if (parts1.length > 1) {
                const lines = parts1[1].split("\n\n")[0].split("\n");
                const iface = util.getValue(lines, "BSD Device Name", ":", true);
                const mac = util.getValue(lines, "MAC Address", ":", true);
                const model = util.getValue(lines, "hardware", ":", true);
                result2.push({
                  id: "Wi-Fi",
                  iface,
                  model,
                  vendor: "",
                  mac
                });
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          } else if (_windows) {
            let cmd = "netsh wlan show interfaces";
            util.powerShell(cmd).then(function(stdout) {
              const allLines = stdout.toString().split("\r\n");
              for (let i = 0; i < allLines.length; i++) {
                allLines[i] = allLines[i].trim();
              }
              const parts = allLines.join("\r\n").split(":\r\n\r\n");
              parts.shift();
              parts.forEach((part) => {
                const lines = part.split("\r\n");
                if (lines.length >= 5) {
                  const iface = lines[0].indexOf(":") >= 0 ? lines[0].split(":")[1].trim() : "";
                  const model = lines[1].indexOf(":") >= 0 ? lines[1].split(":")[1].trim() : "";
                  const id = lines[2].indexOf(":") >= 0 ? lines[2].split(":")[1].trim() : "";
                  const macParts = lines[3].indexOf(":") >= 0 ? lines[3].split(":") : [];
                  macParts.shift();
                  const mac = macParts.join(":").trim();
                  const vendor = getVendor(model);
                  if (iface && model && id && mac) {
                    result2.push({
                      id,
                      iface,
                      model,
                      vendor,
                      mac
                    });
                  }
                }
              });
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          } else {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
        });
      });
    }
    exports2.wifiInterfaces = wifiInterfaces;
  }
});

// node_modules/systeminformation/lib/processes.js
var require_processes = __commonJS({
  "node_modules/systeminformation/lib/processes.js"(exports2) {
    "use strict";
    var os = require("os");
    var fs2 = require("fs");
    var path2 = require("path");
    var exec = require("child_process").exec;
    var execSync = require("child_process").execSync;
    var util = require_util();
    var _platform = process.platform;
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _sunos = _platform === "sunos";
    var _processes_cpu = {
      all: 0,
      all_utime: 0,
      all_stime: 0,
      list: {},
      ms: 0,
      result: {}
    };
    var _services_cpu = {
      all: 0,
      all_utime: 0,
      all_stime: 0,
      list: {},
      ms: 0,
      result: {}
    };
    var _process_cpu = {
      all: 0,
      all_utime: 0,
      all_stime: 0,
      list: {},
      ms: 0,
      result: {}
    };
    var _winStatusValues = {
      "0": "unknown",
      "1": "other",
      "2": "ready",
      "3": "running",
      "4": "blocked",
      "5": "suspended blocked",
      "6": "suspended ready",
      "7": "terminated",
      "8": "stopped",
      "9": "growing"
    };
    function parseTimeUnix(time) {
      let result2 = time;
      let parts = time.replace(/ +/g, " ").split(" ");
      if (parts.length === 5) {
        result2 = parts[4] + "-" + ("0" + ("JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC".indexOf(parts[1].toUpperCase()) / 3 + 1)).slice(-2) + "-" + ("0" + parts[2]).slice(-2) + " " + parts[3];
      }
      return result2;
    }
    function parseElapsedTime(etime) {
      let current = /* @__PURE__ */ new Date();
      current = new Date(current.getTime() - current.getTimezoneOffset() * 6e4);
      const elapsed = etime.split("-");
      const timeIndex = elapsed.length - 1;
      const days = timeIndex > 0 ? parseInt(elapsed[timeIndex - 1]) : 0;
      const timeStr = elapsed[timeIndex].split(":");
      const hours = timeStr.length === 3 ? parseInt(timeStr[0] || 0) : 0;
      const mins = parseInt(timeStr[timeStr.length === 3 ? 1 : 0] || 0);
      const secs = parseInt(timeStr[timeStr.length === 3 ? 2 : 1] || 0);
      const ms = (((days * 24 + hours) * 60 + mins) * 60 + secs) * 1e3;
      let res = new Date(current.getTime());
      let result2 = res.toISOString().substring(0, 10) + " " + res.toISOString().substring(11, 19);
      try {
        res = new Date(current.getTime() - ms);
        result2 = res.toISOString().substring(0, 10) + " " + res.toISOString().substring(11, 19);
      } catch (e) {
        util.noop();
      }
      return result2;
    }
    function services(srv, callback) {
      if (util.isFunction(srv) && !callback) {
        callback = srv;
        srv = "";
      }
      return new Promise((resolve) => {
        process.nextTick(() => {
          if (typeof srv !== "string") {
            if (callback) {
              callback([]);
            }
            return resolve([]);
          }
          if (srv) {
            let srvString = "";
            try {
              srvString.__proto__.toLowerCase = util.stringToLower;
              srvString.__proto__.replace = util.stringReplace;
              srvString.__proto__.toString = util.stringToString;
              srvString.__proto__.substr = util.stringSubstr;
              srvString.__proto__.substring = util.stringSubstring;
              srvString.__proto__.trim = util.stringTrim;
              srvString.__proto__.startsWith = util.stringStartWith;
            } catch (e) {
              Object.setPrototypeOf(srvString, util.stringObj);
            }
            const s = util.sanitizeShellString(srv);
            const l = util.mathMin(s.length, 2e3);
            for (let i = 0; i <= l; i++) {
              if (s[i] !== void 0) {
                srvString = srvString + s[i];
              }
            }
            srvString = srvString.trim().toLowerCase().replace(/, /g, "|").replace(/,+/g, "|");
            if (srvString === "") {
              srvString = "*";
            }
            if (util.isPrototypePolluted() && srvString !== "*") {
              srvString = "------";
            }
            let srvs = srvString.split("|");
            let result2 = [];
            let dataSrv = [];
            if (_linux || _freebsd || _openbsd || _netbsd || _darwin) {
              if ((_linux || _freebsd || _openbsd || _netbsd) && srvString === "*") {
                try {
                  const tmpsrv = execSync("systemctl --all --type=service --no-legend 2> /dev/null", util.execOptsLinux).toString().split("\n");
                  srvs = [];
                  for (const s2 of tmpsrv) {
                    const name = s2.split(".service")[0];
                    if (name && s2.indexOf(" not-found ") === -1) {
                      srvs.push(name.trim());
                    }
                  }
                  srvString = srvs.join("|");
                } catch (d) {
                  try {
                    srvString = "";
                    const tmpsrv = execSync("service --status-all 2> /dev/null", util.execOptsLinux).toString().split("\n");
                    for (const s2 of tmpsrv) {
                      const parts = s2.split("]");
                      if (parts.length === 2) {
                        srvString += (srvString !== "" ? "|" : "") + parts[1].trim();
                      }
                    }
                    srvs = srvString.split("|");
                  } catch (e) {
                    try {
                      const srvStr = execSync("ls /etc/init.d/ -m 2> /dev/null", util.execOptsLinux).toString().split("\n").join("");
                      srvString = "";
                      if (srvStr) {
                        const tmpsrv = srvStr.split(",");
                        for (const s2 of tmpsrv) {
                          const name = s2.trim();
                          if (name) {
                            srvString += (srvString !== "" ? "|" : "") + name;
                          }
                        }
                        srvs = srvString.split("|");
                      }
                    } catch (f) {
                      srvString = "";
                      srvs = [];
                    }
                  }
                }
              }
              if (_darwin && srvString === "*") {
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              }
              let args = _darwin ? ["-caxo", "pcpu,pmem,pid,command"] : ["-axo", "pcpu,pmem,pid,command"];
              if (srvString !== "" && srvs.length > 0) {
                util.execSafe("ps", args).then((stdout) => {
                  if (stdout) {
                    let lines = stdout.replace(/ +/g, " ").replace(/,+/g, ".").split("\n");
                    srvs.forEach(function(srv2) {
                      let ps;
                      if (_darwin) {
                        ps = lines.filter(function(e) {
                          return e.toLowerCase().indexOf(srv2) !== -1;
                        });
                      } else {
                        ps = lines.filter(function(e) {
                          return e.toLowerCase().indexOf(" " + srv2.toLowerCase() + ":") !== -1 || e.toLowerCase().indexOf("(" + srv2.toLowerCase() + " ") !== -1 || e.toLowerCase().indexOf("(" + srv2.toLowerCase() + ")") !== -1 || e.toLowerCase().indexOf(" " + srv2.toLowerCase().replace(/[0-9.]/g, "") + ":") !== -1 || e.toLowerCase().indexOf("/" + srv2.toLowerCase()) !== -1;
                        });
                      }
                      const pids = [];
                      for (const p of ps) {
                        const pid = p.trim().split(" ")[2];
                        if (pid) {
                          pids.push(parseInt(pid, 10));
                        }
                      }
                      result2.push({
                        name: srv2,
                        running: ps.length > 0,
                        startmode: "",
                        pids,
                        cpu: parseFloat(ps.reduce(function(pv, cv) {
                          return pv + parseFloat(cv.trim().split(" ")[0]);
                        }, 0).toFixed(2)),
                        mem: parseFloat(ps.reduce(function(pv, cv) {
                          return pv + parseFloat(cv.trim().split(" ")[1]);
                        }, 0).toFixed(2))
                      });
                    });
                    if (_linux) {
                      let cmd = 'cat /proc/stat | grep "cpu "';
                      for (let i in result2) {
                        for (let j in result2[i].pids) {
                          cmd += ";cat /proc/" + result2[i].pids[j] + "/stat";
                        }
                      }
                      exec(cmd, { maxBuffer: 1024 * 2e4 }, function(error, stdout2) {
                        let curr_processes = stdout2.toString().split("\n");
                        let all = parseProcStat(curr_processes.shift());
                        let list_new = {};
                        let resultProcess = {};
                        curr_processes.forEach((element) => {
                          resultProcess = calcProcStatLinux(element, all, _services_cpu);
                          if (resultProcess.pid) {
                            let listPos = -1;
                            for (let i in result2) {
                              for (let j in result2[i].pids) {
                                if (parseInt(result2[i].pids[j]) === parseInt(resultProcess.pid)) {
                                  listPos = i;
                                }
                              }
                            }
                            if (listPos >= 0) {
                              result2[listPos].cpu += resultProcess.cpuu + resultProcess.cpus;
                            }
                            list_new[resultProcess.pid] = {
                              cpuu: resultProcess.cpuu,
                              cpus: resultProcess.cpus,
                              utime: resultProcess.utime,
                              stime: resultProcess.stime,
                              cutime: resultProcess.cutime,
                              cstime: resultProcess.cstime
                            };
                          }
                        });
                        _services_cpu.all = all;
                        _services_cpu.list = Object.assign({}, list_new);
                        _services_cpu.ms = Date.now() - _services_cpu.ms;
                        _services_cpu.result = Object.assign({}, result2);
                        if (callback) {
                          callback(result2);
                        }
                        resolve(result2);
                      });
                    } else {
                      if (callback) {
                        callback(result2);
                      }
                      resolve(result2);
                    }
                  } else {
                    args = ["-o", "comm"];
                    util.execSafe("ps", args).then((stdout2) => {
                      if (stdout2) {
                        let lines = stdout2.replace(/ +/g, " ").replace(/,+/g, ".").split("\n");
                        srvs.forEach(function(srv2) {
                          let ps = lines.filter(function(e) {
                            return e.indexOf(srv2) !== -1;
                          });
                          result2.push({
                            name: srv2,
                            running: ps.length > 0,
                            startmode: "",
                            cpu: 0,
                            mem: 0
                          });
                        });
                        if (callback) {
                          callback(result2);
                        }
                        resolve(result2);
                      } else {
                        srvs.forEach(function(srv2) {
                          result2.push({
                            name: srv2,
                            running: false,
                            startmode: "",
                            cpu: 0,
                            mem: 0
                          });
                        });
                        if (callback) {
                          callback(result2);
                        }
                        resolve(result2);
                      }
                    });
                  }
                });
              } else {
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              }
            }
            if (_windows) {
              try {
                let wincommand = "Get-CimInstance Win32_Service";
                if (srvs[0] !== "*") {
                  wincommand += ' -Filter "';
                  srvs.forEach((srv2) => {
                    wincommand += `Name='${srv2}' or `;
                  });
                  wincommand = `${wincommand.slice(0, -4)}"`;
                }
                wincommand += " | select Name,Caption,Started,StartMode,ProcessId | fl";
                util.powerShell(wincommand).then((stdout, error) => {
                  if (!error) {
                    let serviceSections = stdout.split(/\n\s*\n/);
                    serviceSections.forEach((element) => {
                      if (element.trim() !== "") {
                        let lines = element.trim().split("\r\n");
                        let srvName = util.getValue(lines, "Name", ":", true).toLowerCase();
                        let srvCaption = util.getValue(lines, "Caption", ":", true).toLowerCase();
                        let started = util.getValue(lines, "Started", ":", true);
                        let startMode = util.getValue(lines, "StartMode", ":", true);
                        let pid = util.getValue(lines, "ProcessId", ":", true);
                        if (srvString === "*" || srvs.indexOf(srvName) >= 0 || srvs.indexOf(srvCaption) >= 0) {
                          result2.push({
                            name: srvName,
                            running: started.toLowerCase() === "true",
                            startmode: startMode,
                            pids: [pid],
                            cpu: 0,
                            mem: 0
                          });
                          dataSrv.push(srvName);
                          dataSrv.push(srvCaption);
                        }
                      }
                    });
                    if (srvString !== "*") {
                      let srvsMissing = srvs.filter(function(e) {
                        return dataSrv.indexOf(e) === -1;
                      });
                      srvsMissing.forEach(function(srvName) {
                        result2.push({
                          name: srvName,
                          running: false,
                          startmode: "",
                          pids: [],
                          cpu: 0,
                          mem: 0
                        });
                      });
                    }
                    if (callback) {
                      callback(result2);
                    }
                    resolve(result2);
                  } else {
                    srvs.forEach(function(srvName) {
                      result2.push({
                        name: srvName,
                        running: false,
                        startmode: "",
                        cpu: 0,
                        mem: 0
                      });
                    });
                    if (callback) {
                      callback(result2);
                    }
                    resolve(result2);
                  }
                });
              } catch (e) {
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              }
            }
          } else {
            if (callback) {
              callback([]);
            }
            resolve([]);
          }
        });
      });
    }
    exports2.services = services;
    function parseProcStat(line) {
      let parts = line.replace(/ +/g, " ").split(" ");
      let user = parts.length >= 2 ? parseInt(parts[1]) : 0;
      let nice = parts.length >= 3 ? parseInt(parts[2]) : 0;
      let system = parts.length >= 4 ? parseInt(parts[3]) : 0;
      let idle = parts.length >= 5 ? parseInt(parts[4]) : 0;
      let iowait = parts.length >= 6 ? parseInt(parts[5]) : 0;
      let irq = parts.length >= 7 ? parseInt(parts[6]) : 0;
      let softirq = parts.length >= 8 ? parseInt(parts[7]) : 0;
      let steal = parts.length >= 9 ? parseInt(parts[8]) : 0;
      let guest = parts.length >= 10 ? parseInt(parts[9]) : 0;
      let guest_nice = parts.length >= 11 ? parseInt(parts[10]) : 0;
      return user + nice + system + idle + iowait + irq + softirq + steal + guest + guest_nice;
    }
    function calcProcStatLinux(line, all, _cpu_old) {
      let statparts = line.replace(/ +/g, " ").split(")");
      if (statparts.length >= 2) {
        let parts = statparts[1].split(" ");
        if (parts.length >= 16) {
          let pid = parseInt(statparts[0].split(" ")[0]);
          let utime = parseInt(parts[12]);
          let stime = parseInt(parts[13]);
          let cutime = parseInt(parts[14]);
          let cstime = parseInt(parts[15]);
          let cpuu = 0;
          let cpus = 0;
          if (_cpu_old.all > 0 && _cpu_old.list[pid]) {
            cpuu = (utime + cutime - _cpu_old.list[pid].utime - _cpu_old.list[pid].cutime) / (all - _cpu_old.all) * 100;
            cpus = (stime + cstime - _cpu_old.list[pid].stime - _cpu_old.list[pid].cstime) / (all - _cpu_old.all) * 100;
          } else {
            cpuu = (utime + cutime) / all * 100;
            cpus = (stime + cstime) / all * 100;
          }
          return {
            pid,
            utime,
            stime,
            cutime,
            cstime,
            cpuu,
            cpus
          };
        } else {
          return {
            pid: 0,
            utime: 0,
            stime: 0,
            cutime: 0,
            cstime: 0,
            cpuu: 0,
            cpus: 0
          };
        }
      } else {
        return {
          pid: 0,
          utime: 0,
          stime: 0,
          cutime: 0,
          cstime: 0,
          cpuu: 0,
          cpus: 0
        };
      }
    }
    function calcProcStatWin(procStat, all, _cpu_old) {
      let cpuu = 0;
      let cpus = 0;
      if (_cpu_old.all > 0 && _cpu_old.list[procStat.pid]) {
        cpuu = (procStat.utime - _cpu_old.list[procStat.pid].utime) / (all - _cpu_old.all) * 100;
        cpus = (procStat.stime - _cpu_old.list[procStat.pid].stime) / (all - _cpu_old.all) * 100;
      } else {
        cpuu = procStat.utime / all * 100;
        cpus = procStat.stime / all * 100;
      }
      return {
        pid: procStat.pid,
        utime: procStat.utime,
        stime: procStat.stime,
        cpuu: cpuu > 0 ? cpuu : 0,
        cpus: cpus > 0 ? cpus : 0
      };
    }
    function processes(callback) {
      let parsedhead = [];
      function getName(command) {
        command = command || "";
        let result2 = command.split(" ")[0];
        if (result2.substr(-1) === ":") {
          result2 = result2.substr(0, result2.length - 1);
        }
        if (result2.substr(0, 1) !== "[") {
          let parts = result2.split("/");
          if (isNaN(parseInt(parts[parts.length - 1]))) {
            result2 = parts[parts.length - 1];
          } else {
            result2 = parts[0];
          }
        }
        return result2;
      }
      function parseLine(line) {
        let offset = 0;
        let offset2 = 0;
        function checkColumn(i) {
          offset = offset2;
          if (parsedhead[i]) {
            offset2 = line.substring(parsedhead[i].to + offset, 1e4).indexOf(" ");
          } else {
            offset2 = 1e4;
          }
        }
        checkColumn(0);
        const pid = parseInt(line.substring(parsedhead[0].from + offset, parsedhead[0].to + offset2));
        checkColumn(1);
        const ppid = parseInt(line.substring(parsedhead[1].from + offset, parsedhead[1].to + offset2));
        checkColumn(2);
        const cpu = parseFloat(line.substring(parsedhead[2].from + offset, parsedhead[2].to + offset2).replace(/,/g, "."));
        checkColumn(3);
        const mem = parseFloat(line.substring(parsedhead[3].from + offset, parsedhead[3].to + offset2).replace(/,/g, "."));
        checkColumn(4);
        const priority = parseInt(line.substring(parsedhead[4].from + offset, parsedhead[4].to + offset2));
        checkColumn(5);
        const vsz = parseInt(line.substring(parsedhead[5].from + offset, parsedhead[5].to + offset2));
        checkColumn(6);
        const rss = parseInt(line.substring(parsedhead[6].from + offset, parsedhead[6].to + offset2));
        checkColumn(7);
        const nice = parseInt(line.substring(parsedhead[7].from + offset, parsedhead[7].to + offset2)) || 0;
        checkColumn(8);
        const started = !_sunos ? parseElapsedTime(line.substring(parsedhead[8].from + offset, parsedhead[8].to + offset2).trim()) : parseTimeUnix(line.substring(parsedhead[8].from + offset, parsedhead[8].to + offset2).trim());
        checkColumn(9);
        let state = line.substring(parsedhead[9].from + offset, parsedhead[9].to + offset2).trim();
        state = state[0] === "R" ? "running" : state[0] === "S" ? "sleeping" : state[0] === "T" ? "stopped" : state[0] === "W" ? "paging" : state[0] === "X" ? "dead" : state[0] === "Z" ? "zombie" : state[0] === "D" || state[0] === "U" ? "blocked" : "unknown";
        checkColumn(10);
        let tty = line.substring(parsedhead[10].from + offset, parsedhead[10].to + offset2).trim();
        if (tty === "?" || tty === "??") {
          tty = "";
        }
        checkColumn(11);
        const user = line.substring(parsedhead[11].from + offset, parsedhead[11].to + offset2).trim();
        checkColumn(12);
        let cmdPath = "";
        let command = "";
        let params = "";
        let fullcommand = line.substring(parsedhead[12].from + offset, parsedhead[12].to + offset2).trim();
        if (fullcommand.substr(fullcommand.length - 1) === "]") {
          fullcommand = fullcommand.slice(0, -1);
        }
        if (fullcommand.substr(0, 1) === "[") {
          command = fullcommand.substring(1);
        } else {
          const p1 = fullcommand.indexOf("(");
          const p2 = fullcommand.indexOf(")");
          const p3 = fullcommand.indexOf("/");
          const p4 = fullcommand.indexOf(":");
          if (p1 < p2 && p1 < p3 && p3 < p2) {
            command = fullcommand.split(" ")[0];
            command = command.replace(/:/g, "");
          } else {
            if (p4 > 0 && (p3 === -1 || p3 > 3)) {
              command = fullcommand.split(" ")[0];
              command = command.replace(/:/g, "");
            } else {
              let firstParamPos = fullcommand.indexOf(" -");
              let firstParamPathPos = fullcommand.indexOf(" /");
              firstParamPos = firstParamPos >= 0 ? firstParamPos : 1e4;
              firstParamPathPos = firstParamPathPos >= 0 ? firstParamPathPos : 1e4;
              const firstPos = Math.min(firstParamPos, firstParamPathPos);
              let tmpCommand = fullcommand.substr(0, firstPos);
              const tmpParams = fullcommand.substr(firstPos);
              const lastSlashPos = tmpCommand.lastIndexOf("/");
              if (lastSlashPos >= 0) {
                cmdPath = tmpCommand.substr(0, lastSlashPos);
                tmpCommand = tmpCommand.substr(lastSlashPos + 1);
              }
              if (firstPos === 1e4 && tmpCommand.indexOf(" ") > -1) {
                const parts = tmpCommand.split(" ");
                if (fs2.existsSync(path2.join(cmdPath, parts[0]))) {
                  command = parts.shift();
                  params = (parts.join(" ") + " " + tmpParams).trim();
                } else {
                  command = tmpCommand.trim();
                  params = tmpParams.trim();
                }
              } else {
                command = tmpCommand.trim();
                params = tmpParams.trim();
              }
            }
          }
        }
        return {
          pid,
          parentPid: ppid,
          name: _linux ? getName(command) : command,
          cpu,
          cpuu: 0,
          cpus: 0,
          mem,
          priority,
          memVsz: vsz,
          memRss: rss,
          nice,
          started,
          state,
          tty,
          user,
          command,
          params,
          path: cmdPath
        };
      }
      function parseProcesses(lines) {
        let result2 = [];
        if (lines.length > 1) {
          let head = lines[0];
          parsedhead = util.parseHead(head, 8);
          lines.shift();
          lines.forEach(function(line) {
            if (line.trim() !== "") {
              result2.push(parseLine(line));
            }
          });
        }
        return result2;
      }
      function parseProcesses2(lines) {
        function formatDateTime(time) {
          const month = ("0" + (time.getMonth() + 1).toString()).slice(-2);
          const year = time.getFullYear().toString();
          const day = ("0" + time.getDate().toString()).slice(-2);
          const hours = ("0" + time.getHours().toString()).slice(-2);
          const mins = ("0" + time.getMinutes().toString()).slice(-2);
          const secs = ("0" + time.getSeconds().toString()).slice(-2);
          return year + "-" + month + "-" + day + " " + hours + ":" + mins + ":" + secs;
        }
        function parseElapsed(etime) {
          let started = "";
          if (etime.indexOf("d") >= 0) {
            const elapsed_parts = etime.split("d");
            started = formatDateTime(new Date(Date.now() - (elapsed_parts[0] * 24 + elapsed_parts[1] * 1) * 60 * 60 * 1e3));
          } else if (etime.indexOf("h") >= 0) {
            const elapsed_parts = etime.split("h");
            started = formatDateTime(new Date(Date.now() - (elapsed_parts[0] * 60 + elapsed_parts[1] * 1) * 60 * 1e3));
          } else if (etime.indexOf(":") >= 0) {
            const elapsed_parts = etime.split(":");
            started = formatDateTime(new Date(Date.now() - (elapsed_parts.length > 1 ? (elapsed_parts[0] * 60 + elapsed_parts[1]) * 1e3 : elapsed_parts[0] * 1e3)));
          }
          return started;
        }
        let result2 = [];
        lines.forEach(function(line) {
          if (line.trim() !== "") {
            line = line.trim().replace(/ +/g, " ").replace(/,+/g, ".");
            const parts = line.split(" ");
            const command = parts.slice(9).join(" ");
            const pmem = parseFloat((1 * parseInt(parts[3]) * 1024 / os.totalmem()).toFixed(1));
            const started = parseElapsed(parts[5]);
            result2.push({
              pid: parseInt(parts[0]),
              parentPid: parseInt(parts[1]),
              name: getName(command),
              cpu: 0,
              cpuu: 0,
              cpus: 0,
              mem: pmem,
              priority: 0,
              memVsz: parseInt(parts[2]),
              memRss: parseInt(parts[3]),
              nice: parseInt(parts[4]),
              started,
              state: parts[6] === "R" ? "running" : parts[6] === "S" ? "sleeping" : parts[6] === "T" ? "stopped" : parts[6] === "W" ? "paging" : parts[6] === "X" ? "dead" : parts[6] === "Z" ? "zombie" : parts[6] === "D" || parts[6] === "U" ? "blocked" : "unknown",
              tty: parts[7],
              user: parts[8],
              command
            });
          }
        });
        return result2;
      }
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = {
            all: 0,
            running: 0,
            blocked: 0,
            sleeping: 0,
            unknown: 0,
            list: []
          };
          let cmd = "";
          if (_processes_cpu.ms && Date.now() - _processes_cpu.ms >= 500 || _processes_cpu.ms === 0) {
            if (_linux || _freebsd || _openbsd || _netbsd || _darwin || _sunos) {
              if (_linux) {
                cmd = "export LC_ALL=C; ps -axo pid:11,ppid:11,pcpu:6,pmem:6,pri:5,vsz:11,rss:11,ni:5,etime:30,state:5,tty:15,user:20,command; unset LC_ALL";
              }
              if (_freebsd || _openbsd || _netbsd) {
                cmd = "export LC_ALL=C; ps -axo pid,ppid,pcpu,pmem,pri,vsz,rss,ni,etime,state,tty,user,command; unset LC_ALL";
              }
              if (_darwin) {
                cmd = "ps -axo pid,ppid,pcpu,pmem,pri,vsz=temp_title_1,rss=temp_title_2,nice,etime=temp_title_3,state,tty,user,command -r";
              }
              if (_sunos) {
                cmd = "ps -Ao pid,ppid,pcpu,pmem,pri,vsz,rss,nice,stime,s,tty,user,comm";
              }
              exec(cmd, { maxBuffer: 1024 * 2e4 }, function(error, stdout) {
                if (!error && stdout.toString().trim()) {
                  result2.list = parseProcesses(stdout.toString().split("\n")).slice();
                  result2.all = result2.list.length;
                  result2.running = result2.list.filter(function(e) {
                    return e.state === "running";
                  }).length;
                  result2.blocked = result2.list.filter(function(e) {
                    return e.state === "blocked";
                  }).length;
                  result2.sleeping = result2.list.filter(function(e) {
                    return e.state === "sleeping";
                  }).length;
                  if (_linux) {
                    cmd = 'cat /proc/stat | grep "cpu "';
                    result2.list.forEach((element) => {
                      cmd += ";cat /proc/" + element.pid + "/stat";
                    });
                    exec(cmd, { maxBuffer: 1024 * 2e4 }, function(error2, stdout2) {
                      let curr_processes = stdout2.toString().split("\n");
                      let all = parseProcStat(curr_processes.shift());
                      let list_new = {};
                      let resultProcess = {};
                      curr_processes.forEach((element) => {
                        resultProcess = calcProcStatLinux(element, all, _processes_cpu);
                        if (resultProcess.pid) {
                          let listPos = result2.list.map(function(e) {
                            return e.pid;
                          }).indexOf(resultProcess.pid);
                          if (listPos >= 0) {
                            result2.list[listPos].cpu = resultProcess.cpuu + resultProcess.cpus;
                            result2.list[listPos].cpuu = resultProcess.cpuu;
                            result2.list[listPos].cpus = resultProcess.cpus;
                          }
                          list_new[resultProcess.pid] = {
                            cpuu: resultProcess.cpuu,
                            cpus: resultProcess.cpus,
                            utime: resultProcess.utime,
                            stime: resultProcess.stime,
                            cutime: resultProcess.cutime,
                            cstime: resultProcess.cstime
                          };
                        }
                      });
                      _processes_cpu.all = all;
                      _processes_cpu.list = Object.assign({}, list_new);
                      _processes_cpu.ms = Date.now() - _processes_cpu.ms;
                      _processes_cpu.result = Object.assign({}, result2);
                      if (callback) {
                        callback(result2);
                      }
                      resolve(result2);
                    });
                  } else {
                    if (callback) {
                      callback(result2);
                    }
                    resolve(result2);
                  }
                } else {
                  cmd = "ps -o pid,ppid,vsz,rss,nice,etime,stat,tty,user,comm";
                  if (_sunos) {
                    cmd = "ps -o pid,ppid,vsz,rss,nice,etime,s,tty,user,comm";
                  }
                  exec(cmd, { maxBuffer: 1024 * 2e4 }, function(error2, stdout2) {
                    if (!error2) {
                      let lines = stdout2.toString().split("\n");
                      lines.shift();
                      result2.list = parseProcesses2(lines).slice();
                      result2.all = result2.list.length;
                      result2.running = result2.list.filter(function(e) {
                        return e.state === "running";
                      }).length;
                      result2.blocked = result2.list.filter(function(e) {
                        return e.state === "blocked";
                      }).length;
                      result2.sleeping = result2.list.filter(function(e) {
                        return e.state === "sleeping";
                      }).length;
                      if (callback) {
                        callback(result2);
                      }
                      resolve(result2);
                    } else {
                      if (callback) {
                        callback(result2);
                      }
                      resolve(result2);
                    }
                  });
                }
              });
            } else if (_windows) {
              try {
                util.powerShell('Get-CimInstance Win32_Process | select-Object ProcessId,ParentProcessId,ExecutionState,Caption,CommandLine,ExecutablePath,UserModeTime,KernelModeTime,WorkingSetSize,Priority,PageFileUsage, @{n="CreationDate";e={$_.CreationDate.ToString("yyyy-MM-dd HH:mm:ss")}} | fl').then((stdout, error) => {
                  if (!error) {
                    let processSections = stdout.split(/\n\s*\n/);
                    let procs = [];
                    let procStats = [];
                    let list_new = {};
                    let allcpuu = 0;
                    let allcpus = 0;
                    processSections.forEach((element) => {
                      if (element.trim() !== "") {
                        let lines = element.trim().split("\r\n");
                        let pid = parseInt(util.getValue(lines, "ProcessId", ":", true), 10);
                        let parentPid = parseInt(util.getValue(lines, "ParentProcessId", ":", true), 10);
                        let statusValue = util.getValue(lines, "ExecutionState", ":");
                        let name = util.getValue(lines, "Caption", ":", true);
                        let commandLine = util.getValue(lines, "CommandLine", ":", true);
                        let additionalCommand = false;
                        lines.forEach((line) => {
                          if (additionalCommand && line.toLowerCase().startsWith(" ")) {
                            commandLine += " " + line.trim();
                          } else {
                            additionalCommand = false;
                          }
                          if (line.toLowerCase().startsWith("commandline")) {
                            additionalCommand = true;
                          }
                        });
                        let commandPath = util.getValue(lines, "ExecutablePath", ":", true);
                        let utime = parseInt(util.getValue(lines, "UserModeTime", ":", true), 10);
                        let stime = parseInt(util.getValue(lines, "KernelModeTime", ":", true), 10);
                        let memw = parseInt(util.getValue(lines, "WorkingSetSize", ":", true), 10);
                        allcpuu = allcpuu + utime;
                        allcpus = allcpus + stime;
                        result2.all++;
                        if (!statusValue) {
                          result2.unknown++;
                        }
                        if (statusValue === "3") {
                          result2.running++;
                        }
                        if (statusValue === "4" || statusValue === "5") {
                          result2.blocked++;
                        }
                        procStats.push({
                          pid,
                          utime,
                          stime,
                          cpu: 0,
                          cpuu: 0,
                          cpus: 0
                        });
                        procs.push({
                          pid,
                          parentPid,
                          name,
                          cpu: 0,
                          cpuu: 0,
                          cpus: 0,
                          mem: memw / os.totalmem() * 100,
                          priority: parseInt(util.getValue(lines, "Priority", ":", true), 10),
                          memVsz: parseInt(util.getValue(lines, "PageFileUsage", ":", true), 10),
                          memRss: Math.floor(parseInt(util.getValue(lines, "WorkingSetSize", ":", true), 10) / 1024),
                          nice: 0,
                          started: util.getValue(lines, "CreationDate", ":", true),
                          state: !statusValue ? _winStatusValues[0] : _winStatusValues[statusValue],
                          tty: "",
                          user: "",
                          command: commandLine || name,
                          path: commandPath,
                          params: ""
                        });
                      }
                    });
                    result2.sleeping = result2.all - result2.running - result2.blocked - result2.unknown;
                    result2.list = procs;
                    procStats.forEach((element) => {
                      let resultProcess = calcProcStatWin(element, allcpuu + allcpus, _processes_cpu);
                      let listPos = result2.list.map(function(e) {
                        return e.pid;
                      }).indexOf(resultProcess.pid);
                      if (listPos >= 0) {
                        result2.list[listPos].cpu = resultProcess.cpuu + resultProcess.cpus;
                        result2.list[listPos].cpuu = resultProcess.cpuu;
                        result2.list[listPos].cpus = resultProcess.cpus;
                      }
                      list_new[resultProcess.pid] = {
                        cpuu: resultProcess.cpuu,
                        cpus: resultProcess.cpus,
                        utime: resultProcess.utime,
                        stime: resultProcess.stime
                      };
                    });
                    _processes_cpu.all = allcpuu + allcpus;
                    _processes_cpu.all_utime = allcpuu;
                    _processes_cpu.all_stime = allcpus;
                    _processes_cpu.list = Object.assign({}, list_new);
                    _processes_cpu.ms = Date.now() - _processes_cpu.ms;
                    _processes_cpu.result = Object.assign({}, result2);
                  }
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                });
              } catch (e) {
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              }
            } else {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          } else {
            if (callback) {
              callback(_processes_cpu.result);
            }
            resolve(_processes_cpu.result);
          }
        });
      });
    }
    exports2.processes = processes;
    function processLoad(proc, callback) {
      if (util.isFunction(proc) && !callback) {
        callback = proc;
        proc = "";
      }
      return new Promise((resolve) => {
        process.nextTick(() => {
          proc = proc || "";
          if (typeof proc !== "string") {
            if (callback) {
              callback([]);
            }
            return resolve([]);
          }
          let processesString = "";
          try {
            processesString.__proto__.toLowerCase = util.stringToLower;
            processesString.__proto__.replace = util.stringReplace;
            processesString.__proto__.toString = util.stringToString;
            processesString.__proto__.substr = util.stringSubstr;
            processesString.__proto__.substring = util.stringSubstring;
            processesString.__proto__.trim = util.stringTrim;
            processesString.__proto__.startsWith = util.stringStartWith;
          } catch (e) {
            Object.setPrototypeOf(processesString, util.stringObj);
          }
          const s = util.sanitizeShellString(proc);
          const l = util.mathMin(s.length, 2e3);
          for (let i = 0; i <= l; i++) {
            if (s[i] !== void 0) {
              processesString = processesString + s[i];
            }
          }
          processesString = processesString.trim().toLowerCase().replace(/, /g, "|").replace(/,+/g, "|");
          if (processesString === "") {
            processesString = "*";
          }
          if (util.isPrototypePolluted() && processesString !== "*") {
            processesString = "------";
          }
          let processes2 = processesString.split("|");
          let result2 = [];
          const procSanitized = util.isPrototypePolluted() ? "" : util.sanitizeShellString(proc) || "*";
          if (procSanitized && processes2.length && processes2[0] !== "------") {
            if (_windows) {
              try {
                util.powerShell("Get-CimInstance Win32_Process | select ProcessId,Caption,UserModeTime,KernelModeTime,WorkingSetSize | fl").then((stdout, error) => {
                  if (!error) {
                    let processSections = stdout.split(/\n\s*\n/);
                    let procStats = [];
                    let list_new = {};
                    let allcpuu = 0;
                    let allcpus = 0;
                    processSections.forEach((element) => {
                      if (element.trim() !== "") {
                        let lines = element.trim().split("\r\n");
                        let pid = parseInt(util.getValue(lines, "ProcessId", ":", true), 10);
                        let name = util.getValue(lines, "Caption", ":", true);
                        let utime = parseInt(util.getValue(lines, "UserModeTime", ":", true), 10);
                        let stime = parseInt(util.getValue(lines, "KernelModeTime", ":", true), 10);
                        let mem = parseInt(util.getValue(lines, "WorkingSetSize", ":", true), 10);
                        allcpuu = allcpuu + utime;
                        allcpus = allcpus + stime;
                        procStats.push({
                          pid,
                          name,
                          utime,
                          stime,
                          cpu: 0,
                          cpuu: 0,
                          cpus: 0,
                          mem
                        });
                        let pname = "";
                        let inList = false;
                        processes2.forEach(function(proc2) {
                          if (name.toLowerCase().indexOf(proc2.toLowerCase()) >= 0 && !inList) {
                            inList = true;
                            pname = proc2;
                          }
                        });
                        if (processesString === "*" || inList) {
                          let processFound = false;
                          result2.forEach(function(item) {
                            if (item.proc.toLowerCase() === pname.toLowerCase()) {
                              item.pids.push(pid);
                              item.mem += mem / os.totalmem() * 100;
                              processFound = true;
                            }
                          });
                          if (!processFound) {
                            result2.push({
                              proc: pname,
                              pid,
                              pids: [pid],
                              cpu: 0,
                              mem: mem / os.totalmem() * 100
                            });
                          }
                        }
                      }
                    });
                    if (processesString !== "*") {
                      let processesMissing = processes2.filter(function(name) {
                        return procStats.filter(function(item) {
                          return item.name.toLowerCase().indexOf(name) >= 0;
                        }).length === 0;
                      });
                      processesMissing.forEach(function(procName) {
                        result2.push({
                          proc: procName,
                          pid: null,
                          pids: [],
                          cpu: 0,
                          mem: 0
                        });
                      });
                    }
                    procStats.forEach((element) => {
                      let resultProcess = calcProcStatWin(element, allcpuu + allcpus, _process_cpu);
                      let listPos = -1;
                      for (let j = 0; j < result2.length; j++) {
                        if (result2[j].pid === resultProcess.pid || result2[j].pids.indexOf(resultProcess.pid) >= 0) {
                          listPos = j;
                        }
                      }
                      if (listPos >= 0) {
                        result2[listPos].cpu += resultProcess.cpuu + resultProcess.cpus;
                      }
                      list_new[resultProcess.pid] = {
                        cpuu: resultProcess.cpuu,
                        cpus: resultProcess.cpus,
                        utime: resultProcess.utime,
                        stime: resultProcess.stime
                      };
                    });
                    _process_cpu.all = allcpuu + allcpus;
                    _process_cpu.all_utime = allcpuu;
                    _process_cpu.all_stime = allcpus;
                    _process_cpu.list = Object.assign({}, list_new);
                    _process_cpu.ms = Date.now() - _process_cpu.ms;
                    _process_cpu.result = JSON.parse(JSON.stringify(result2));
                    if (callback) {
                      callback(result2);
                    }
                    resolve(result2);
                  }
                });
              } catch (e) {
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              }
            }
            if (_darwin || _linux || _freebsd || _openbsd || _netbsd) {
              const params = ["-axo", "pid,ppid,pcpu,pmem,comm"];
              util.execSafe("ps", params).then((stdout) => {
                if (stdout) {
                  let procStats = [];
                  let lines = stdout.toString().split("\n").filter(function(line) {
                    if (processesString === "*") {
                      return true;
                    }
                    if (line.toLowerCase().indexOf("grep") !== -1) {
                      return false;
                    }
                    let found = false;
                    processes2.forEach(function(item) {
                      found = found || line.toLowerCase().indexOf(item.toLowerCase()) >= 0;
                    });
                    return found;
                  });
                  lines.shift();
                  lines.forEach(function(line) {
                    let data = line.trim().replace(/ +/g, " ").split(" ");
                    if (data.length > 4) {
                      const linuxName = data[4].indexOf("/") >= 0 ? data[4].substring(0, data[4].indexOf("/")) : data[4];
                      const name = _linux ? linuxName : data[4].substring(data[4].lastIndexOf("/") + 1);
                      procStats.push({
                        name,
                        pid: parseInt(data[0]) || 0,
                        ppid: parseInt(data[1]) || 0,
                        cpu: parseFloat(data[2].replace(",", ".")),
                        mem: parseFloat(data[3].replace(",", "."))
                      });
                    }
                  });
                  procStats.forEach(function(item) {
                    let listPos = -1;
                    let inList = false;
                    let name = item.name;
                    for (let j = 0; j < result2.length; j++) {
                      if (item.name.toLowerCase().indexOf(result2[j].proc.toLowerCase()) >= 0) {
                        listPos = j;
                      }
                    }
                    processes2.forEach(function(proc2) {
                      if (item.name.toLowerCase().indexOf(proc2.toLowerCase()) >= 0 && !inList) {
                        inList = true;
                        name = proc2;
                      }
                    });
                    if (processesString === "*" || inList) {
                      if (listPos < 0) {
                        if (name) {
                          result2.push({
                            proc: name,
                            pid: item.pid,
                            pids: [item.pid],
                            cpu: item.cpu,
                            mem: item.mem
                          });
                        }
                      } else {
                        if (item.ppid < 10) {
                          result2[listPos].pid = item.pid;
                        }
                        result2[listPos].pids.push(item.pid);
                        result2[listPos].cpu += item.cpu;
                        result2[listPos].mem += item.mem;
                      }
                    }
                  });
                  if (processesString !== "*") {
                    let processesMissing = processes2.filter(function(name) {
                      return procStats.filter(function(item) {
                        return item.name.toLowerCase().indexOf(name) >= 0;
                      }).length === 0;
                    });
                    processesMissing.forEach(function(procName) {
                      result2.push({
                        proc: procName,
                        pid: null,
                        pids: [],
                        cpu: 0,
                        mem: 0
                      });
                    });
                  }
                  if (_linux) {
                    result2.forEach(function(item) {
                      item.cpu = 0;
                    });
                    let cmd = 'cat /proc/stat | grep "cpu "';
                    for (let i in result2) {
                      for (let j in result2[i].pids) {
                        cmd += ";cat /proc/" + result2[i].pids[j] + "/stat";
                      }
                    }
                    exec(cmd, { maxBuffer: 1024 * 2e4 }, function(error, stdout2) {
                      let curr_processes = stdout2.toString().split("\n");
                      let all = parseProcStat(curr_processes.shift());
                      let list_new = {};
                      let resultProcess = {};
                      curr_processes.forEach((element) => {
                        resultProcess = calcProcStatLinux(element, all, _process_cpu);
                        if (resultProcess.pid) {
                          let resultItemId = -1;
                          for (let i in result2) {
                            if (result2[i].pids.indexOf(resultProcess.pid) >= 0) {
                              resultItemId = i;
                            }
                          }
                          if (resultItemId >= 0) {
                            result2[resultItemId].cpu += resultProcess.cpuu + resultProcess.cpus;
                          }
                          list_new[resultProcess.pid] = {
                            cpuu: resultProcess.cpuu,
                            cpus: resultProcess.cpus,
                            utime: resultProcess.utime,
                            stime: resultProcess.stime,
                            cutime: resultProcess.cutime,
                            cstime: resultProcess.cstime
                          };
                        }
                      });
                      result2.forEach(function(item) {
                        item.cpu = Math.round(item.cpu * 100) / 100;
                      });
                      _process_cpu.all = all;
                      _process_cpu.list = Object.assign({}, list_new);
                      _process_cpu.ms = Date.now() - _process_cpu.ms;
                      _process_cpu.result = Object.assign({}, result2);
                      if (callback) {
                        callback(result2);
                      }
                      resolve(result2);
                    });
                  } else {
                    if (callback) {
                      callback(result2);
                    }
                    resolve(result2);
                  }
                } else {
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                }
              });
            }
          }
        });
      });
    }
    exports2.processLoad = processLoad;
  }
});

// node_modules/systeminformation/lib/users.js
var require_users = __commonJS({
  "node_modules/systeminformation/lib/users.js"(exports2) {
    "use strict";
    var exec = require("child_process").exec;
    var util = require_util();
    var _platform = process.platform;
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _sunos = _platform === "sunos";
    function parseUsersLinux(lines, phase) {
      let result2 = [];
      let result_who = [];
      let result_w = {};
      let w_first = true;
      let w_header = [];
      let w_pos = [];
      let who_line = {};
      let is_whopart = true;
      lines.forEach(function(line) {
        if (line === "---") {
          is_whopart = false;
        } else {
          let l = line.replace(/ +/g, " ").split(" ");
          if (is_whopart) {
            result_who.push({
              user: l[0],
              tty: l[1],
              date: l[2],
              time: l[3],
              ip: l && l.length > 4 ? l[4].replace(/\(/g, "").replace(/\)/g, "") : ""
            });
          } else {
            if (w_first) {
              w_header = l;
              w_header.forEach(function(item) {
                w_pos.push(line.indexOf(item));
              });
              w_first = false;
            } else {
              result_w.user = line.substring(w_pos[0], w_pos[1] - 1).trim();
              result_w.tty = line.substring(w_pos[1], w_pos[2] - 1).trim();
              result_w.ip = line.substring(w_pos[2], w_pos[3] - 1).replace(/\(/g, "").replace(/\)/g, "").trim();
              result_w.command = line.substring(w_pos[7], 1e3).trim();
              who_line = result_who.filter(function(obj) {
                return obj.user.substring(0, 8).trim() === result_w.user && obj.tty === result_w.tty;
              });
              if (who_line.length === 1) {
                result2.push({
                  user: who_line[0].user,
                  tty: who_line[0].tty,
                  date: who_line[0].date,
                  time: who_line[0].time,
                  ip: who_line[0].ip,
                  command: result_w.command
                });
              }
            }
          }
        }
      });
      if (result2.length === 0 && phase === 2) {
        return result_who;
      } else {
        return result2;
      }
    }
    function parseUsersDarwin(lines) {
      let result2 = [];
      let result_who = [];
      let result_w = {};
      let who_line = {};
      let is_whopart = true;
      lines.forEach(function(line) {
        if (line === "---") {
          is_whopart = false;
        } else {
          let l = line.replace(/ +/g, " ").split(" ");
          if (is_whopart) {
            let dt = "" + (/* @__PURE__ */ new Date()).getFullYear() + "-" + ("0" + ("JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC".indexOf(l[2].toUpperCase()) / 3 + 1)).slice(-2) + "-" + ("0" + l[3]).slice(-2);
            try {
              if (new Date(dt) > /* @__PURE__ */ new Date()) {
                dt = "" + ((/* @__PURE__ */ new Date()).getFullYear() - 1) + "-" + ("0" + ("JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC".indexOf(l[2].toUpperCase()) / 3 + 1)).slice(-2) + "-" + ("0" + l[3]).slice(-2);
              }
            } catch {
              util.noop();
            }
            result_who.push({
              user: l[0],
              tty: l[1],
              date: dt,
              time: l[4]
            });
          } else {
            result_w.user = l[0];
            result_w.tty = l[1];
            result_w.ip = l[2] !== "-" ? l[2] : "";
            result_w.command = l.slice(5, 1e3).join(" ");
            who_line = result_who.filter(function(obj) {
              return obj.user.substring(0, 10) === result_w.user.substring(0, 10) && (obj.tty.substring(3, 1e3) === result_w.tty || obj.tty === result_w.tty);
            });
            if (who_line.length === 1) {
              result2.push({
                user: who_line[0].user,
                tty: who_line[0].tty,
                date: who_line[0].date,
                time: who_line[0].time,
                ip: result_w.ip,
                command: result_w.command
              });
            }
          }
        }
      });
      return result2;
    }
    function users(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = [];
          if (_linux) {
            exec('export LC_ALL=C; who --ips; echo "---"; w; unset LC_ALL | tail -n +2', function(error, stdout) {
              if (!error) {
                let lines = stdout.toString().split("\n");
                result2 = parseUsersLinux(lines, 1);
                if (result2.length === 0) {
                  exec('who; echo "---"; w | tail -n +2', function(error2, stdout2) {
                    if (!error2) {
                      lines = stdout2.toString().split("\n");
                      result2 = parseUsersLinux(lines, 2);
                    }
                    if (callback) {
                      callback(result2);
                    }
                    resolve(result2);
                  });
                } else {
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                }
              } else {
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              }
            });
          }
          if (_freebsd || _openbsd || _netbsd) {
            exec('who; echo "---"; w -ih', function(error, stdout) {
              if (!error) {
                let lines = stdout.toString().split("\n");
                result2 = parseUsersDarwin(lines);
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_sunos) {
            exec('who; echo "---"; w -h', function(error, stdout) {
              if (!error) {
                let lines = stdout.toString().split("\n");
                result2 = parseUsersDarwin(lines);
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_darwin) {
            exec('export LC_ALL=C; who; echo "---"; w -ih; unset LC_ALL', function(error, stdout) {
              if (!error) {
                let lines = stdout.toString().split("\n");
                result2 = parseUsersDarwin(lines);
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_windows) {
            try {
              let cmd = `Get-CimInstance Win32_LogonSession | select LogonId,@{n="StartTime";e={$_.StartTime.ToString("yyyy-MM-dd HH:mm:ss")}} | fl; echo '#-#-#-#';`;
              cmd += "Get-CimInstance Win32_LoggedOnUser | select antecedent,dependent | fl ; echo '#-#-#-#';";
              cmd += `$process = (Get-CimInstance Win32_Process -Filter "name = 'explorer.exe'"); Invoke-CimMethod -InputObject $process[0] -MethodName GetOwner | select user, domain | fl; get-process -name explorer | select-object sessionid | fl; echo '#-#-#-#';`;
              cmd += "query user";
              util.powerShell(cmd).then((data) => {
                if (data) {
                  data = data.split("#-#-#-#");
                  let sessions = parseWinSessions((data[0] || "").split(/\n\s*\n/));
                  let loggedons = parseWinLoggedOn((data[1] || "").split(/\n\s*\n/));
                  let queryUser = parseWinUsersQuery((data[3] || "").split("\r\n"));
                  let users2 = parseWinUsers((data[2] || "").split(/\n\s*\n/), queryUser);
                  for (let id in loggedons) {
                    if ({}.hasOwnProperty.call(loggedons, id)) {
                      loggedons[id].dateTime = {}.hasOwnProperty.call(sessions, id) ? sessions[id] : "";
                    }
                  }
                  users2.forEach((user) => {
                    let dateTime = "";
                    for (let id in loggedons) {
                      if ({}.hasOwnProperty.call(loggedons, id)) {
                        if (loggedons[id].user === user.user && (!dateTime || dateTime < loggedons[id].dateTime)) {
                          dateTime = loggedons[id].dateTime;
                        }
                      }
                    }
                    result2.push({
                      user: user.user,
                      tty: user.tty,
                      date: `${dateTime.substring(0, 10)}`,
                      time: `${dateTime.substring(11, 19)}`,
                      ip: "",
                      command: ""
                    });
                  });
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    }
    function parseWinSessions(sessionParts) {
      const sessions = {};
      sessionParts.forEach((session) => {
        const lines = session.split("\r\n");
        const id = util.getValue(lines, "LogonId");
        const starttime = util.getValue(lines, "starttime");
        if (id) {
          sessions[id] = starttime;
        }
      });
      return sessions;
    }
    function fuzzyMatch(name1, name2) {
      name1 = name1.toLowerCase();
      name2 = name2.toLowerCase();
      let eq = 0;
      let len = name1.length;
      if (name2.length > len) {
        len = name2.length;
      }
      for (let i = 0; i < len; i++) {
        const c1 = name1[i] || "";
        const c2 = name2[i] || "";
        if (c1 === c2) {
          eq++;
        }
      }
      return len > 10 ? eq / len > 0.9 : len > 0 ? eq / len > 0.8 : false;
    }
    function parseWinUsers(userParts, userQuery) {
      const users2 = [];
      userParts.forEach((user) => {
        const lines = user.split("\r\n");
        const domain = util.getValue(lines, "domain", ":", true);
        const username = util.getValue(lines, "user", ":", true);
        const sessionid = util.getValue(lines, "sessionid", ":", true);
        if (username) {
          const quser = userQuery.filter((item) => fuzzyMatch(item.user, username));
          users2.push({
            domain,
            user: username,
            tty: quser && quser[0] && quser[0].tty ? quser[0].tty : sessionid
          });
        }
      });
      return users2;
    }
    function parseWinLoggedOn(loggedonParts) {
      const loggedons = {};
      loggedonParts.forEach((loggedon) => {
        const lines = loggedon.split("\r\n");
        const antecendent = util.getValue(lines, "antecedent", ":", true);
        let parts = antecendent.split("=");
        const name = parts.length > 2 ? parts[1].split(",")[0].replace(/"/g, "").trim() : "";
        const domain = parts.length > 2 ? parts[2].replace(/"/g, "").replace(/\)/g, "").trim() : "";
        const dependent = util.getValue(lines, "dependent", ":", true);
        parts = dependent.split("=");
        const id = parts.length > 1 ? parts[1].replace(/"/g, "").replace(/\)/g, "").trim() : "";
        if (id) {
          loggedons[id] = {
            domain,
            user: name
          };
        }
      });
      return loggedons;
    }
    function parseWinUsersQuery(lines) {
      lines = lines.filter((item) => item);
      let result2 = [];
      const header = lines[0];
      const headerDelimiter = [];
      if (header) {
        const start = header[0] === " " ? 1 : 0;
        headerDelimiter.push(start - 1);
        let nextSpace = 0;
        for (let i = start + 1; i < header.length; i++) {
          if (header[i] === " " && (header[i - 1] === " " || header[i - 1] === ".")) {
            nextSpace = i;
          } else {
            if (nextSpace) {
              headerDelimiter.push(nextSpace);
              nextSpace = 0;
            }
          }
        }
        for (let i = 1; i < lines.length; i++) {
          if (lines[i].trim()) {
            const user = lines[i].substring(headerDelimiter[0] + 1, headerDelimiter[1]).trim() || "";
            const tty = lines[i].substring(headerDelimiter[1] + 1, headerDelimiter[2] - 2).trim() || "";
            result2.push({
              user,
              tty
            });
          }
        }
      }
      return result2;
    }
    exports2.users = users;
  }
});

// node_modules/systeminformation/lib/internet.js
var require_internet = __commonJS({
  "node_modules/systeminformation/lib/internet.js"(exports2) {
    "use strict";
    var util = require_util();
    var _platform = process.platform;
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _sunos = _platform === "sunos";
    function inetChecksite(url2, callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = {
            url: url2,
            ok: false,
            status: 404,
            ms: null
          };
          if (typeof url2 !== "string") {
            if (callback) {
              callback(result2);
            }
            return resolve(result2);
          }
          let urlSanitized = "";
          const s = util.sanitizeShellString(url2, true);
          const l = util.mathMin(s.length, 2e3);
          for (let i = 0; i <= l; i++) {
            if (s[i] !== void 0) {
              try {
                s[i].__proto__.toLowerCase = util.stringToLower;
              } catch (e) {
                Object.setPrototypeOf(s[i], util.stringObj);
              }
              const sl = s[i].toLowerCase();
              if (sl && sl[0] && !sl[1] && sl[0].length === 1) {
                urlSanitized = urlSanitized + sl[0];
              }
            }
          }
          result2.url = urlSanitized;
          try {
            if (urlSanitized && !util.isPrototypePolluted()) {
              try {
                urlSanitized.__proto__.startsWith = util.stringStartWith;
              } catch (e) {
                Object.setPrototypeOf(urlSanitized, util.stringObj);
              }
              if (urlSanitized.startsWith("file:") || urlSanitized.startsWith("gopher:") || urlSanitized.startsWith("telnet:") || urlSanitized.startsWith("mailto:") || urlSanitized.startsWith("news:") || urlSanitized.startsWith("nntp:")) {
                if (callback) {
                  callback(result2);
                }
                return resolve(result2);
              }
              util.checkWebsite(urlSanitized).then((res) => {
                result2.status = res.statusCode;
                result2.ok = res.statusCode >= 200 && res.statusCode <= 399;
                ;
                result2.ms = result2.ok ? res.time : null;
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } else {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          } catch (err) {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
        });
      });
    }
    exports2.inetChecksite = inetChecksite;
    function inetLatency(host, callback) {
      if (util.isFunction(host) && !callback) {
        callback = host;
        host = "";
      }
      host = host || "8.8.8.8";
      return new Promise((resolve) => {
        process.nextTick(() => {
          if (typeof host !== "string") {
            if (callback) {
              callback(null);
            }
            return resolve(null);
          }
          let hostSanitized = "";
          const s = (util.isPrototypePolluted() ? "8.8.8.8" : util.sanitizeShellString(host, true)).trim();
          const l = util.mathMin(s.length, 2e3);
          for (let i = 0; i <= l; i++) {
            if (!(s[i] === void 0)) {
              try {
                s[i].__proto__.toLowerCase = util.stringToLower;
              } catch (e) {
                Object.setPrototypeOf(s[i], util.stringObj);
              }
              const sl = s[i].toLowerCase();
              if (sl && sl[0] && !sl[1]) {
                hostSanitized = hostSanitized + sl[0];
              }
            }
          }
          try {
            hostSanitized.__proto__.startsWith = util.stringStartWith;
          } catch (e) {
            Object.setPrototypeOf(hostSanitized, util.stringObj);
          }
          if (hostSanitized.startsWith("file:") || hostSanitized.startsWith("gopher:") || hostSanitized.startsWith("telnet:") || hostSanitized.startsWith("mailto:") || hostSanitized.startsWith("news:") || hostSanitized.startsWith("nntp:")) {
            if (callback) {
              callback(null);
            }
            return resolve(null);
          }
          let params;
          if (_linux || _freebsd || _openbsd || _netbsd || _darwin) {
            if (_linux) {
              params = ["-c", "2", "-w", "3", hostSanitized];
            }
            if (_freebsd || _openbsd || _netbsd) {
              params = ["-c", "2", "-t", "3", hostSanitized];
            }
            if (_darwin) {
              params = ["-c2", "-t3", hostSanitized];
            }
            util.execSafe("ping", params).then((stdout) => {
              let result2 = null;
              if (stdout) {
                const lines = stdout.split("\n").filter((line2) => line2.indexOf("rtt") >= 0 || line2.indexOf("round-trip") >= 0 || line2.indexOf("avg") >= 0).join("\n");
                const line = lines.split("=");
                if (line.length > 1) {
                  const parts = line[1].split("/");
                  if (parts.length > 1) {
                    result2 = parseFloat(parts[1]);
                  }
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_sunos) {
            const params2 = ["-s", "-a", hostSanitized, "56", "2"];
            const filt = "avg";
            util.execSafe("ping", params2, { timeout: 3e3 }).then((stdout) => {
              let result2 = null;
              if (stdout) {
                const lines = stdout.split("\n").filter((line2) => line2.indexOf(filt) >= 0).join("\n");
                const line = lines.split("=");
                if (line.length > 1) {
                  const parts = line[1].split("/");
                  if (parts.length > 1) {
                    result2 = parseFloat(parts[1].replace(",", "."));
                  }
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_windows) {
            let result2 = null;
            try {
              const params2 = [hostSanitized, "-n", "1"];
              util.execSafe("ping", params2, util.execOptsWin).then((stdout) => {
                if (stdout) {
                  let lines = stdout.split("\r\n");
                  lines.shift();
                  lines.forEach(function(line) {
                    if ((line.toLowerCase().match(/ms/g) || []).length === 3) {
                      let l2 = line.replace(/ +/g, " ").split(" ");
                      if (l2.length > 6) {
                        result2 = parseFloat(l2[l2.length - 1]);
                      }
                    }
                  });
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              });
            } catch (e) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    }
    exports2.inetLatency = inetLatency;
  }
});

// node_modules/systeminformation/lib/dockerSocket.js
var require_dockerSocket = __commonJS({
  "node_modules/systeminformation/lib/dockerSocket.js"(exports2, module2) {
    "use strict";
    var net = require("net");
    var isWin = require("os").type() === "Windows_NT";
    var socketPath = isWin ? "//./pipe/docker_engine" : "/var/run/docker.sock";
    var DockerSocket = class {
      getInfo(callback) {
        try {
          let socket = net.createConnection({ path: socketPath });
          let alldata = "";
          let data;
          socket.on("connect", () => {
            socket.write("GET http:/info HTTP/1.0\r\n\r\n");
          });
          socket.on("data", (data2) => {
            alldata = alldata + data2.toString();
          });
          socket.on("error", () => {
            socket = false;
            callback({});
          });
          socket.on("end", () => {
            let startbody = alldata.indexOf("\r\n\r\n");
            alldata = alldata.substring(startbody + 4);
            socket = false;
            try {
              data = JSON.parse(alldata);
              callback(data);
            } catch (err) {
              callback({});
            }
          });
        } catch (err) {
          callback({});
        }
      }
      listImages(all, callback) {
        try {
          let socket = net.createConnection({ path: socketPath });
          let alldata = "";
          let data;
          socket.on("connect", () => {
            socket.write("GET http:/images/json" + (all ? "?all=1" : "") + " HTTP/1.0\r\n\r\n");
          });
          socket.on("data", (data2) => {
            alldata = alldata + data2.toString();
          });
          socket.on("error", () => {
            socket = false;
            callback({});
          });
          socket.on("end", () => {
            let startbody = alldata.indexOf("\r\n\r\n");
            alldata = alldata.substring(startbody + 4);
            socket = false;
            try {
              data = JSON.parse(alldata);
              callback(data);
            } catch (err) {
              callback({});
            }
          });
        } catch (err) {
          callback({});
        }
      }
      inspectImage(id, callback) {
        id = id || "";
        if (id) {
          try {
            let socket = net.createConnection({ path: socketPath });
            let alldata = "";
            let data;
            socket.on("connect", () => {
              socket.write("GET http:/images/" + id + "/json?stream=0 HTTP/1.0\r\n\r\n");
            });
            socket.on("data", (data2) => {
              alldata = alldata + data2.toString();
            });
            socket.on("error", () => {
              socket = false;
              callback({});
            });
            socket.on("end", () => {
              let startbody = alldata.indexOf("\r\n\r\n");
              alldata = alldata.substring(startbody + 4);
              socket = false;
              try {
                data = JSON.parse(alldata);
                callback(data);
              } catch (err) {
                callback({});
              }
            });
          } catch (err) {
            callback({});
          }
        } else {
          callback({});
        }
      }
      listContainers(all, callback) {
        try {
          let socket = net.createConnection({ path: socketPath });
          let alldata = "";
          let data;
          socket.on("connect", () => {
            socket.write("GET http:/containers/json" + (all ? "?all=1" : "") + " HTTP/1.0\r\n\r\n");
          });
          socket.on("data", (data2) => {
            alldata = alldata + data2.toString();
          });
          socket.on("error", () => {
            socket = false;
            callback({});
          });
          socket.on("end", () => {
            let startbody = alldata.indexOf("\r\n\r\n");
            alldata = alldata.substring(startbody + 4);
            socket = false;
            try {
              data = JSON.parse(alldata);
              callback(data);
            } catch (err) {
              callback({});
            }
          });
        } catch (err) {
          callback({});
        }
      }
      getStats(id, callback) {
        id = id || "";
        if (id) {
          try {
            let socket = net.createConnection({ path: socketPath });
            let alldata = "";
            let data;
            socket.on("connect", () => {
              socket.write("GET http:/containers/" + id + "/stats?stream=0 HTTP/1.0\r\n\r\n");
            });
            socket.on("data", (data2) => {
              alldata = alldata + data2.toString();
            });
            socket.on("error", () => {
              socket = false;
              callback({});
            });
            socket.on("end", () => {
              let startbody = alldata.indexOf("\r\n\r\n");
              alldata = alldata.substring(startbody + 4);
              socket = false;
              try {
                data = JSON.parse(alldata);
                callback(data);
              } catch (err) {
                callback({});
              }
            });
          } catch (err) {
            callback({});
          }
        } else {
          callback({});
        }
      }
      getInspect(id, callback) {
        id = id || "";
        if (id) {
          try {
            let socket = net.createConnection({ path: socketPath });
            let alldata = "";
            let data;
            socket.on("connect", () => {
              socket.write("GET http:/containers/" + id + "/json?stream=0 HTTP/1.0\r\n\r\n");
            });
            socket.on("data", (data2) => {
              alldata = alldata + data2.toString();
            });
            socket.on("error", () => {
              socket = false;
              callback({});
            });
            socket.on("end", () => {
              let startbody = alldata.indexOf("\r\n\r\n");
              alldata = alldata.substring(startbody + 4);
              socket = false;
              try {
                data = JSON.parse(alldata);
                callback(data);
              } catch (err) {
                callback({});
              }
            });
          } catch (err) {
            callback({});
          }
        } else {
          callback({});
        }
      }
      getProcesses(id, callback) {
        id = id || "";
        if (id) {
          try {
            let socket = net.createConnection({ path: socketPath });
            let alldata = "";
            let data;
            socket.on("connect", () => {
              socket.write("GET http:/containers/" + id + "/top?ps_args=-opid,ppid,pgid,vsz,time,etime,nice,ruser,user,rgroup,group,stat,rss,args HTTP/1.0\r\n\r\n");
            });
            socket.on("data", (data2) => {
              alldata = alldata + data2.toString();
            });
            socket.on("error", () => {
              socket = false;
              callback({});
            });
            socket.on("end", () => {
              let startbody = alldata.indexOf("\r\n\r\n");
              alldata = alldata.substring(startbody + 4);
              socket = false;
              try {
                data = JSON.parse(alldata);
                callback(data);
              } catch (err) {
                callback({});
              }
            });
          } catch (err) {
            callback({});
          }
        } else {
          callback({});
        }
      }
      listVolumes(callback) {
        try {
          let socket = net.createConnection({ path: socketPath });
          let alldata = "";
          let data;
          socket.on("connect", () => {
            socket.write("GET http:/volumes HTTP/1.0\r\n\r\n");
          });
          socket.on("data", (data2) => {
            alldata = alldata + data2.toString();
          });
          socket.on("error", () => {
            socket = false;
            callback({});
          });
          socket.on("end", () => {
            let startbody = alldata.indexOf("\r\n\r\n");
            alldata = alldata.substring(startbody + 4);
            socket = false;
            try {
              data = JSON.parse(alldata);
              callback(data);
            } catch (err) {
              callback({});
            }
          });
        } catch (err) {
          callback({});
        }
      }
    };
    module2.exports = DockerSocket;
  }
});

// node_modules/systeminformation/lib/docker.js
var require_docker = __commonJS({
  "node_modules/systeminformation/lib/docker.js"(exports2) {
    "use strict";
    var util = require_util();
    var DockerSocket = require_dockerSocket();
    var _platform = process.platform;
    var _windows = _platform === "win32";
    var _docker_container_stats = {};
    var _docker_socket;
    var _docker_last_read = 0;
    function dockerInfo(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          if (!_docker_socket) {
            _docker_socket = new DockerSocket();
          }
          const result2 = {};
          _docker_socket.getInfo((data) => {
            result2.id = data.ID;
            result2.containers = data.Containers;
            result2.containersRunning = data.ContainersRunning;
            result2.containersPaused = data.ContainersPaused;
            result2.containersStopped = data.ContainersStopped;
            result2.images = data.Images;
            result2.driver = data.Driver;
            result2.memoryLimit = data.MemoryLimit;
            result2.swapLimit = data.SwapLimit;
            result2.kernelMemory = data.KernelMemory;
            result2.cpuCfsPeriod = data.CpuCfsPeriod;
            result2.cpuCfsQuota = data.CpuCfsQuota;
            result2.cpuShares = data.CPUShares;
            result2.cpuSet = data.CPUSet;
            result2.ipv4Forwarding = data.IPv4Forwarding;
            result2.bridgeNfIptables = data.BridgeNfIptables;
            result2.bridgeNfIp6tables = data.BridgeNfIp6tables;
            result2.debug = data.Debug;
            result2.nfd = data.NFd;
            result2.oomKillDisable = data.OomKillDisable;
            result2.ngoroutines = data.NGoroutines;
            result2.systemTime = data.SystemTime;
            result2.loggingDriver = data.LoggingDriver;
            result2.cgroupDriver = data.CgroupDriver;
            result2.nEventsListener = data.NEventsListener;
            result2.kernelVersion = data.KernelVersion;
            result2.operatingSystem = data.OperatingSystem;
            result2.osType = data.OSType;
            result2.architecture = data.Architecture;
            result2.ncpu = data.NCPU;
            result2.memTotal = data.MemTotal;
            result2.dockerRootDir = data.DockerRootDir;
            result2.httpProxy = data.HttpProxy;
            result2.httpsProxy = data.HttpsProxy;
            result2.noProxy = data.NoProxy;
            result2.name = data.Name;
            result2.labels = data.Labels;
            result2.experimentalBuild = data.ExperimentalBuild;
            result2.serverVersion = data.ServerVersion;
            result2.clusterStore = data.ClusterStore;
            result2.clusterAdvertise = data.ClusterAdvertise;
            result2.defaultRuntime = data.DefaultRuntime;
            result2.liveRestoreEnabled = data.LiveRestoreEnabled;
            result2.isolation = data.Isolation;
            result2.initBinary = data.InitBinary;
            result2.productLicense = data.ProductLicense;
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          });
        });
      });
    }
    exports2.dockerInfo = dockerInfo;
    function dockerImages(all, callback) {
      if (util.isFunction(all) && !callback) {
        callback = all;
        all = false;
      }
      if (typeof all === "string" && all === "true") {
        all = true;
      }
      if (typeof all !== "boolean" && all !== void 0) {
        all = false;
      }
      all = all || false;
      let result2 = [];
      return new Promise((resolve) => {
        process.nextTick(() => {
          if (!_docker_socket) {
            _docker_socket = new DockerSocket();
          }
          const workload = [];
          _docker_socket.listImages(all, (data) => {
            let dockerImages2 = {};
            try {
              dockerImages2 = data;
              if (dockerImages2 && Object.prototype.toString.call(dockerImages2) === "[object Array]" && dockerImages2.length > 0) {
                dockerImages2.forEach(function(element) {
                  if (element.Names && Object.prototype.toString.call(element.Names) === "[object Array]" && element.Names.length > 0) {
                    element.Name = element.Names[0].replace(/^\/|\/$/g, "");
                  }
                  workload.push(dockerImagesInspect(element.Id.trim(), element));
                });
                if (workload.length) {
                  Promise.all(
                    workload
                  ).then((data2) => {
                    if (callback) {
                      callback(data2);
                    }
                    resolve(data2);
                  });
                } else {
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                }
              } else {
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              }
            } catch (err) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          });
        });
      });
    }
    function dockerImagesInspect(imageID, payload) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          imageID = imageID || "";
          if (typeof imageID !== "string") {
            return resolve();
          }
          const imageIDSanitized = (util.isPrototypePolluted() ? "" : util.sanitizeShellString(imageID, true)).trim();
          if (imageIDSanitized) {
            if (!_docker_socket) {
              _docker_socket = new DockerSocket();
            }
            _docker_socket.inspectImage(imageIDSanitized.trim(), (data) => {
              try {
                resolve({
                  id: payload.Id,
                  container: data.Container,
                  comment: data.Comment,
                  os: data.Os,
                  architecture: data.Architecture,
                  parent: data.Parent,
                  dockerVersion: data.DockerVersion,
                  size: data.Size,
                  sharedSize: payload.SharedSize,
                  virtualSize: data.VirtualSize,
                  author: data.Author,
                  created: data.Created ? Math.round(new Date(data.Created).getTime() / 1e3) : 0,
                  containerConfig: data.ContainerConfig ? data.ContainerConfig : {},
                  graphDriver: data.GraphDriver ? data.GraphDriver : {},
                  repoDigests: data.RepoDigests ? data.RepoDigests : {},
                  repoTags: data.RepoTags ? data.RepoTags : {},
                  config: data.Config ? data.Config : {},
                  rootFS: data.RootFS ? data.RootFS : {}
                });
              } catch (err) {
                resolve();
              }
            });
          } else {
            resolve();
          }
        });
      });
    }
    exports2.dockerImages = dockerImages;
    function dockerContainers(all, callback) {
      function inContainers(containers, id) {
        let filtered = containers.filter((obj) => {
          return obj.Id && obj.Id === id;
        });
        return filtered.length > 0;
      }
      if (util.isFunction(all) && !callback) {
        callback = all;
        all = false;
      }
      if (typeof all === "string" && all === "true") {
        all = true;
      }
      if (typeof all !== "boolean" && all !== void 0) {
        all = false;
      }
      all = all || false;
      let result2 = [];
      return new Promise((resolve) => {
        process.nextTick(() => {
          if (!_docker_socket) {
            _docker_socket = new DockerSocket();
          }
          const workload = [];
          _docker_socket.listContainers(all, (data) => {
            let docker_containers = {};
            try {
              docker_containers = data;
              if (docker_containers && Object.prototype.toString.call(docker_containers) === "[object Array]" && docker_containers.length > 0) {
                for (let key in _docker_container_stats) {
                  if ({}.hasOwnProperty.call(_docker_container_stats, key)) {
                    if (!inContainers(docker_containers, key)) {
                      delete _docker_container_stats[key];
                    }
                  }
                }
                docker_containers.forEach(function(element) {
                  if (element.Names && Object.prototype.toString.call(element.Names) === "[object Array]" && element.Names.length > 0) {
                    element.Name = element.Names[0].replace(/^\/|\/$/g, "");
                  }
                  workload.push(dockerContainerInspect(element.Id.trim(), element));
                });
                if (workload.length) {
                  Promise.all(
                    workload
                  ).then((data2) => {
                    if (callback) {
                      callback(data2);
                    }
                    resolve(data2);
                  });
                } else {
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                }
              } else {
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              }
            } catch (err) {
              for (let key in _docker_container_stats) {
                if ({}.hasOwnProperty.call(_docker_container_stats, key)) {
                  if (!inContainers(docker_containers, key)) {
                    delete _docker_container_stats[key];
                  }
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          });
        });
      });
    }
    function dockerContainerInspect(containerID, payload) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          containerID = containerID || "";
          if (typeof containerID !== "string") {
            return resolve();
          }
          const containerIdSanitized = (util.isPrototypePolluted() ? "" : util.sanitizeShellString(containerID, true)).trim();
          if (containerIdSanitized) {
            if (!_docker_socket) {
              _docker_socket = new DockerSocket();
            }
            _docker_socket.getInspect(containerIdSanitized.trim(), (data) => {
              try {
                resolve({
                  id: payload.Id,
                  name: payload.Name,
                  image: payload.Image,
                  imageID: payload.ImageID,
                  command: payload.Command,
                  created: payload.Created,
                  started: data.State && data.State.StartedAt ? Math.round(new Date(data.State.StartedAt).getTime() / 1e3) : 0,
                  finished: data.State && data.State.FinishedAt && !data.State.FinishedAt.startsWith("0001-01-01") ? Math.round(new Date(data.State.FinishedAt).getTime() / 1e3) : 0,
                  createdAt: data.Created ? data.Created : "",
                  startedAt: data.State && data.State.StartedAt ? data.State.StartedAt : "",
                  finishedAt: data.State && data.State.FinishedAt && !data.State.FinishedAt.startsWith("0001-01-01") ? data.State.FinishedAt : "",
                  state: payload.State,
                  restartCount: data.RestartCount || 0,
                  platform: data.Platform || "",
                  driver: data.Driver || "",
                  ports: payload.Ports,
                  mounts: payload.Mounts
                  // hostconfig: payload.HostConfig,
                  // network: payload.NetworkSettings
                });
              } catch (err) {
                resolve();
              }
            });
          } else {
            resolve();
          }
        });
      });
    }
    exports2.dockerContainers = dockerContainers;
    function docker_calcCPUPercent(cpu_stats, precpu_stats) {
      if (!_windows) {
        let cpuPercent = 0;
        let cpuDelta = cpu_stats.cpu_usage.total_usage - precpu_stats.cpu_usage.total_usage;
        let systemDelta = cpu_stats.system_cpu_usage - precpu_stats.system_cpu_usage;
        if (systemDelta > 0 && cpuDelta > 0) {
          if (precpu_stats.online_cpus) {
            cpuPercent = cpuDelta / systemDelta * precpu_stats.online_cpus * 100;
          } else {
            cpuPercent = cpuDelta / systemDelta * cpu_stats.cpu_usage.percpu_usage.length * 100;
          }
        }
        return cpuPercent;
      } else {
        let nanoSecNow = util.nanoSeconds();
        let cpuPercent = 0;
        if (_docker_last_read > 0) {
          let possIntervals = nanoSecNow - _docker_last_read;
          let intervalsUsed = cpu_stats.cpu_usage.total_usage - precpu_stats.cpu_usage.total_usage;
          if (possIntervals > 0) {
            cpuPercent = 100 * intervalsUsed / possIntervals;
          }
        }
        _docker_last_read = nanoSecNow;
        return cpuPercent;
      }
    }
    function docker_calcNetworkIO(networks) {
      let rx;
      let wx;
      for (let key in networks) {
        if (!{}.hasOwnProperty.call(networks, key)) {
          continue;
        }
        let obj = networks[key];
        rx = +obj.rx_bytes;
        wx = +obj.tx_bytes;
      }
      return {
        rx,
        wx
      };
    }
    function docker_calcBlockIO(blkio_stats) {
      let result2 = {
        r: 0,
        w: 0
      };
      if (blkio_stats && blkio_stats.io_service_bytes_recursive && Object.prototype.toString.call(blkio_stats.io_service_bytes_recursive) === "[object Array]" && blkio_stats.io_service_bytes_recursive.length > 0) {
        blkio_stats.io_service_bytes_recursive.forEach(function(element) {
          if (element.op && element.op.toLowerCase() === "read" && element.value) {
            result2.r += element.value;
          }
          if (element.op && element.op.toLowerCase() === "write" && element.value) {
            result2.w += element.value;
          }
        });
      }
      return result2;
    }
    function dockerContainerStats(containerIDs, callback) {
      let containerArray = [];
      return new Promise((resolve) => {
        process.nextTick(() => {
          if (util.isFunction(containerIDs) && !callback) {
            callback = containerIDs;
            containerArray = ["*"];
          } else {
            containerIDs = containerIDs || "*";
            if (typeof containerIDs !== "string") {
              if (callback) {
                callback([]);
              }
              return resolve([]);
            }
            let containerIDsSanitized = "";
            try {
              containerIDsSanitized.__proto__.toLowerCase = util.stringToLower;
              containerIDsSanitized.__proto__.replace = util.stringReplace;
              containerIDsSanitized.__proto__.toString = util.stringToString;
              containerIDsSanitized.__proto__.substr = util.stringSubstr;
              containerIDsSanitized.__proto__.substring = util.stringSubstring;
              containerIDsSanitized.__proto__.trim = util.stringTrim;
              containerIDsSanitized.__proto__.startsWith = util.stringStartWith;
            } catch (e) {
              Object.setPrototypeOf(containerIDsSanitized, util.stringObj);
            }
            containerIDsSanitized = containerIDs;
            containerIDsSanitized = containerIDsSanitized.trim();
            if (containerIDsSanitized !== "*") {
              containerIDsSanitized = "";
              const s = (util.isPrototypePolluted() ? "" : util.sanitizeShellString(containerIDs, true)).trim();
              const l = util.mathMin(s.length, 2e3);
              for (let i = 0; i <= l; i++) {
                if (s[i] !== void 0) {
                  s[i].__proto__.toLowerCase = util.stringToLower;
                  const sl = s[i].toLowerCase();
                  if (sl && sl[0] && !sl[1]) {
                    containerIDsSanitized = containerIDsSanitized + sl[0];
                  }
                }
              }
            }
            containerIDsSanitized = containerIDsSanitized.trim().toLowerCase().replace(/,+/g, "|");
            containerArray = containerIDsSanitized.split("|");
          }
          const result2 = [];
          const workload = [];
          if (containerArray.length && containerArray[0].trim() === "*") {
            containerArray = [];
            dockerContainers().then((allContainers) => {
              for (let container of allContainers) {
                containerArray.push(container.id.substring(0, 12));
              }
              if (containerArray.length) {
                dockerContainerStats(containerArray.join(",")).then((result3) => {
                  if (callback) {
                    callback(result3);
                  }
                  resolve(result3);
                });
              } else {
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              }
            });
          } else {
            for (let containerID of containerArray) {
              workload.push(dockerContainerStatsSingle(containerID.trim()));
            }
            if (workload.length) {
              Promise.all(
                workload
              ).then((data) => {
                if (callback) {
                  callback(data);
                }
                resolve(data);
              });
            } else {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          }
        });
      });
    }
    function dockerContainerStatsSingle(containerID) {
      containerID = containerID || "";
      let result2 = {
        id: containerID,
        memUsage: 0,
        memLimit: 0,
        memPercent: 0,
        cpuPercent: 0,
        pids: 0,
        netIO: {
          rx: 0,
          wx: 0
        },
        blockIO: {
          r: 0,
          w: 0
        },
        restartCount: 0,
        cpuStats: {},
        precpuStats: {},
        memoryStats: {},
        networks: {}
      };
      return new Promise((resolve) => {
        process.nextTick(() => {
          if (containerID) {
            if (!_docker_socket) {
              _docker_socket = new DockerSocket();
            }
            _docker_socket.getInspect(containerID, (dataInspect) => {
              try {
                _docker_socket.getStats(containerID, (data) => {
                  try {
                    let stats = data;
                    if (!stats.message) {
                      if (data.id) {
                        result2.id = data.id;
                      }
                      result2.memUsage = stats.memory_stats && stats.memory_stats.usage ? stats.memory_stats.usage : 0;
                      result2.memLimit = stats.memory_stats && stats.memory_stats.limit ? stats.memory_stats.limit : 0;
                      result2.memPercent = stats.memory_stats && stats.memory_stats.usage && stats.memory_stats.limit ? stats.memory_stats.usage / stats.memory_stats.limit * 100 : 0;
                      result2.cpuPercent = stats.cpu_stats && stats.precpu_stats ? docker_calcCPUPercent(stats.cpu_stats, stats.precpu_stats) : 0;
                      result2.pids = stats.pids_stats && stats.pids_stats.current ? stats.pids_stats.current : 0;
                      result2.restartCount = dataInspect.RestartCount ? dataInspect.RestartCount : 0;
                      if (stats.networks) {
                        result2.netIO = docker_calcNetworkIO(stats.networks);
                      }
                      if (stats.blkio_stats) {
                        result2.blockIO = docker_calcBlockIO(stats.blkio_stats);
                      }
                      result2.cpuStats = stats.cpu_stats ? stats.cpu_stats : {};
                      result2.precpuStats = stats.precpu_stats ? stats.precpu_stats : {};
                      result2.memoryStats = stats.memory_stats ? stats.memory_stats : {};
                      result2.networks = stats.networks ? stats.networks : {};
                    }
                  } catch (err) {
                    util.noop();
                  }
                  resolve(result2);
                });
              } catch (err) {
                util.noop();
              }
            });
          } else {
            resolve(result2);
          }
        });
      });
    }
    exports2.dockerContainerStats = dockerContainerStats;
    function dockerContainerProcesses(containerID, callback) {
      let result2 = [];
      return new Promise((resolve) => {
        process.nextTick(() => {
          containerID = containerID || "";
          if (typeof containerID !== "string") {
            return resolve(result2);
          }
          const containerIdSanitized = (util.isPrototypePolluted() ? "" : util.sanitizeShellString(containerID, true)).trim();
          if (containerIdSanitized) {
            if (!_docker_socket) {
              _docker_socket = new DockerSocket();
            }
            _docker_socket.getProcesses(containerIdSanitized, (data) => {
              try {
                if (data && data.Titles && data.Processes) {
                  let titles = data.Titles.map(function(value) {
                    return value.toUpperCase();
                  });
                  let pos_pid = titles.indexOf("PID");
                  let pos_ppid = titles.indexOf("PPID");
                  let pos_pgid = titles.indexOf("PGID");
                  let pos_vsz = titles.indexOf("VSZ");
                  let pos_time = titles.indexOf("TIME");
                  let pos_elapsed = titles.indexOf("ELAPSED");
                  let pos_ni = titles.indexOf("NI");
                  let pos_ruser = titles.indexOf("RUSER");
                  let pos_user = titles.indexOf("USER");
                  let pos_rgroup = titles.indexOf("RGROUP");
                  let pos_group = titles.indexOf("GROUP");
                  let pos_stat = titles.indexOf("STAT");
                  let pos_rss = titles.indexOf("RSS");
                  let pos_command = titles.indexOf("COMMAND");
                  data.Processes.forEach((process2) => {
                    result2.push({
                      pidHost: pos_pid >= 0 ? process2[pos_pid] : "",
                      ppid: pos_ppid >= 0 ? process2[pos_ppid] : "",
                      pgid: pos_pgid >= 0 ? process2[pos_pgid] : "",
                      user: pos_user >= 0 ? process2[pos_user] : "",
                      ruser: pos_ruser >= 0 ? process2[pos_ruser] : "",
                      group: pos_group >= 0 ? process2[pos_group] : "",
                      rgroup: pos_rgroup >= 0 ? process2[pos_rgroup] : "",
                      stat: pos_stat >= 0 ? process2[pos_stat] : "",
                      time: pos_time >= 0 ? process2[pos_time] : "",
                      elapsed: pos_elapsed >= 0 ? process2[pos_elapsed] : "",
                      nice: pos_ni >= 0 ? process2[pos_ni] : "",
                      rss: pos_rss >= 0 ? process2[pos_rss] : "",
                      vsz: pos_vsz >= 0 ? process2[pos_vsz] : "",
                      command: pos_command >= 0 ? process2[pos_command] : ""
                    });
                  });
                }
              } catch (err) {
                util.noop();
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          } else {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
        });
      });
    }
    exports2.dockerContainerProcesses = dockerContainerProcesses;
    function dockerVolumes(callback) {
      let result2 = [];
      return new Promise((resolve) => {
        process.nextTick(() => {
          if (!_docker_socket) {
            _docker_socket = new DockerSocket();
          }
          _docker_socket.listVolumes((data) => {
            let dockerVolumes2 = {};
            try {
              dockerVolumes2 = data;
              if (dockerVolumes2 && dockerVolumes2.Volumes && Object.prototype.toString.call(dockerVolumes2.Volumes) === "[object Array]" && dockerVolumes2.Volumes.length > 0) {
                dockerVolumes2.Volumes.forEach(function(element) {
                  result2.push({
                    name: element.Name,
                    driver: element.Driver,
                    labels: element.Labels,
                    mountpoint: element.Mountpoint,
                    options: element.Options,
                    scope: element.Scope,
                    created: element.CreatedAt ? Math.round(new Date(element.CreatedAt).getTime() / 1e3) : 0
                  });
                });
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              } else {
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              }
            } catch (err) {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          });
        });
      });
    }
    exports2.dockerVolumes = dockerVolumes;
    function dockerAll(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          dockerContainers(true).then((result2) => {
            if (result2 && Object.prototype.toString.call(result2) === "[object Array]" && result2.length > 0) {
              let l = result2.length;
              result2.forEach(function(element) {
                dockerContainerStats(element.id).then((res) => {
                  element.memUsage = res[0].memUsage;
                  element.memLimit = res[0].memLimit;
                  element.memPercent = res[0].memPercent;
                  element.cpuPercent = res[0].cpuPercent;
                  element.pids = res[0].pids;
                  element.netIO = res[0].netIO;
                  element.blockIO = res[0].blockIO;
                  element.cpuStats = res[0].cpuStats;
                  element.precpuStats = res[0].precpuStats;
                  element.memoryStats = res[0].memoryStats;
                  element.networks = res[0].networks;
                  dockerContainerProcesses(element.id).then((processes) => {
                    element.processes = processes;
                    l -= 1;
                    if (l === 0) {
                      if (callback) {
                        callback(result2);
                      }
                      resolve(result2);
                    }
                  });
                });
              });
            } else {
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            }
          });
        });
      });
    }
    exports2.dockerAll = dockerAll;
  }
});

// node_modules/systeminformation/lib/virtualbox.js
var require_virtualbox = __commonJS({
  "node_modules/systeminformation/lib/virtualbox.js"(exports2) {
    "use strict";
    var os = require("os");
    var exec = require("child_process").exec;
    var util = require_util();
    function vboxInfo(callback) {
      let result2 = [];
      return new Promise((resolve) => {
        process.nextTick(() => {
          try {
            exec(util.getVboxmanage() + " list vms --long", function(error, stdout) {
              let parts = (os.EOL + stdout.toString()).split(os.EOL + "Name:");
              parts.shift();
              parts.forEach((part) => {
                const lines = ("Name:" + part).split(os.EOL);
                const state = util.getValue(lines, "State");
                const running = state.startsWith("running");
                const runningSinceString = running ? state.replace("running (since ", "").replace(")", "").trim() : "";
                let runningSince = 0;
                try {
                  if (running) {
                    const sinceDateObj = new Date(runningSinceString);
                    const offset = sinceDateObj.getTimezoneOffset();
                    runningSince = Math.round((Date.now() - Date.parse(sinceDateObj)) / 1e3) + offset * 60;
                  }
                } catch (e) {
                  util.noop();
                }
                const stoppedSinceString = !running ? state.replace("powered off (since", "").replace(")", "").trim() : "";
                let stoppedSince = 0;
                try {
                  if (!running) {
                    const sinceDateObj = new Date(stoppedSinceString);
                    const offset = sinceDateObj.getTimezoneOffset();
                    stoppedSince = Math.round((Date.now() - Date.parse(sinceDateObj)) / 1e3) + offset * 60;
                  }
                } catch (e) {
                  util.noop();
                }
                result2.push({
                  id: util.getValue(lines, "UUID"),
                  name: util.getValue(lines, "Name"),
                  running,
                  started: runningSinceString,
                  runningSince,
                  stopped: stoppedSinceString,
                  stoppedSince,
                  guestOS: util.getValue(lines, "Guest OS"),
                  hardwareUUID: util.getValue(lines, "Hardware UUID"),
                  memory: parseInt(util.getValue(lines, "Memory size", "     "), 10),
                  vram: parseInt(util.getValue(lines, "VRAM size"), 10),
                  cpus: parseInt(util.getValue(lines, "Number of CPUs"), 10),
                  cpuExepCap: util.getValue(lines, "CPU exec cap"),
                  cpuProfile: util.getValue(lines, "CPUProfile"),
                  chipset: util.getValue(lines, "Chipset"),
                  firmware: util.getValue(lines, "Firmware"),
                  pageFusion: util.getValue(lines, "Page Fusion") === "enabled",
                  configFile: util.getValue(lines, "Config file"),
                  snapshotFolder: util.getValue(lines, "Snapshot folder"),
                  logFolder: util.getValue(lines, "Log folder"),
                  hpet: util.getValue(lines, "HPET") === "enabled",
                  pae: util.getValue(lines, "PAE") === "enabled",
                  longMode: util.getValue(lines, "Long Mode") === "enabled",
                  tripleFaultReset: util.getValue(lines, "Triple Fault Reset") === "enabled",
                  apic: util.getValue(lines, "APIC") === "enabled",
                  x2Apic: util.getValue(lines, "X2APIC") === "enabled",
                  acpi: util.getValue(lines, "ACPI") === "enabled",
                  ioApic: util.getValue(lines, "IOAPIC") === "enabled",
                  biosApicMode: util.getValue(lines, "BIOS APIC mode"),
                  bootMenuMode: util.getValue(lines, "Boot menu mode"),
                  bootDevice1: util.getValue(lines, "Boot Device 1"),
                  bootDevice2: util.getValue(lines, "Boot Device 2"),
                  bootDevice3: util.getValue(lines, "Boot Device 3"),
                  bootDevice4: util.getValue(lines, "Boot Device 4"),
                  timeOffset: util.getValue(lines, "Time offset"),
                  rtc: util.getValue(lines, "RTC")
                });
              });
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          } catch (e) {
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
        });
      });
    }
    exports2.vboxInfo = vboxInfo;
  }
});

// node_modules/systeminformation/lib/printer.js
var require_printer = __commonJS({
  "node_modules/systeminformation/lib/printer.js"(exports2) {
    "use strict";
    var exec = require("child_process").exec;
    var util = require_util();
    var _platform = process.platform;
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _sunos = _platform === "sunos";
    var winPrinterStatus = {
      1: "Other",
      2: "Unknown",
      3: "Idle",
      4: "Printing",
      5: "Warmup",
      6: "Stopped Printing",
      7: "Offline"
    };
    function parseLinuxCupsHeader(lines) {
      const result2 = {};
      if (lines && lines.length) {
        if (lines[0].indexOf(" CUPS v") > 0) {
          const parts = lines[0].split(" CUPS v");
          result2.cupsVersion = parts[1];
        }
      }
      return result2;
    }
    function parseLinuxCupsPrinter(lines) {
      const result2 = {};
      const printerId = util.getValue(lines, "PrinterId", " ");
      result2.id = printerId ? parseInt(printerId, 10) : null;
      result2.name = util.getValue(lines, "Info", " ");
      result2.model = lines.length > 0 && lines[0] ? lines[0].split(" ")[0] : "";
      result2.uri = util.getValue(lines, "DeviceURI", " ");
      result2.uuid = util.getValue(lines, "UUID", " ");
      result2.status = util.getValue(lines, "State", " ");
      result2.local = util.getValue(lines, "Location", " ").toLowerCase().startsWith("local");
      result2.default = null;
      result2.shared = util.getValue(lines, "Shared", " ").toLowerCase().startsWith("yes");
      return result2;
    }
    function parseLinuxLpstatPrinter(lines, id) {
      const result2 = {};
      result2.id = id;
      result2.name = util.getValue(lines, "Description", ":", true);
      result2.model = lines.length > 0 && lines[0] ? lines[0].split(" ")[0] : "";
      result2.uri = null;
      result2.uuid = null;
      result2.status = lines.length > 0 && lines[0] ? lines[0].indexOf(" idle") > 0 ? "idle" : lines[0].indexOf(" printing") > 0 ? "printing" : "unknown" : null;
      result2.local = util.getValue(lines, "Location", ":", true).toLowerCase().startsWith("local");
      result2.default = null;
      result2.shared = util.getValue(lines, "Shared", " ").toLowerCase().startsWith("yes");
      return result2;
    }
    function parseDarwinPrinters(printerObject, id) {
      const result2 = {};
      const uriParts = printerObject.uri.split("/");
      result2.id = id;
      result2.name = printerObject._name;
      result2.model = uriParts.length ? uriParts[uriParts.length - 1] : "";
      result2.uri = printerObject.uri;
      result2.uuid = null;
      result2.status = printerObject.status;
      result2.local = printerObject.printserver === "local";
      result2.default = printerObject.default === "yes";
      result2.shared = printerObject.shared === "yes";
      return result2;
    }
    function parseWindowsPrinters(lines, id) {
      const result2 = {};
      const status = parseInt(util.getValue(lines, "PrinterStatus", ":"), 10);
      result2.id = id;
      result2.name = util.getValue(lines, "name", ":");
      result2.model = util.getValue(lines, "DriverName", ":");
      result2.uri = null;
      result2.uuid = null;
      result2.status = winPrinterStatus[status] ? winPrinterStatus[status] : null;
      result2.local = util.getValue(lines, "Local", ":").toUpperCase() === "TRUE";
      result2.default = util.getValue(lines, "Default", ":").toUpperCase() === "TRUE";
      result2.shared = util.getValue(lines, "Shared", ":").toUpperCase() === "TRUE";
      return result2;
    }
    function printer(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = [];
          if (_linux || _freebsd || _openbsd || _netbsd) {
            let cmd = "cat /etc/cups/printers.conf 2>/dev/null";
            exec(cmd, function(error, stdout) {
              if (!error) {
                const parts = stdout.toString().split("<Printer ");
                const printerHeader = parseLinuxCupsHeader(parts[0]);
                for (let i = 1; i < parts.length; i++) {
                  const printers = parseLinuxCupsPrinter(parts[i].split("\n"));
                  if (printers.name) {
                    printers.engine = "CUPS";
                    printers.engineVersion = printerHeader.cupsVersion;
                    result2.push(printers);
                  }
                }
              }
              if (result2.length === 0) {
                if (_linux) {
                  cmd = "export LC_ALL=C; lpstat -lp 2>/dev/null; unset LC_ALL";
                  exec(cmd, function(error2, stdout2) {
                    const parts = ("\n" + stdout2.toString()).split("\nprinter ");
                    for (let i = 1; i < parts.length; i++) {
                      const printers = parseLinuxLpstatPrinter(parts[i].split("\n"), i);
                      result2.push(printers);
                    }
                  });
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                } else {
                  if (callback) {
                    callback(result2);
                  }
                  resolve(result2);
                }
              } else {
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              }
            });
          }
          if (_darwin) {
            let cmd = "system_profiler SPPrintersDataType -json";
            exec(cmd, function(error, stdout) {
              if (!error) {
                try {
                  const outObj = JSON.parse(stdout.toString());
                  if (outObj.SPPrintersDataType && outObj.SPPrintersDataType.length) {
                    for (let i = 0; i < outObj.SPPrintersDataType.length; i++) {
                      const printer2 = parseDarwinPrinters(outObj.SPPrintersDataType[i], i);
                      result2.push(printer2);
                    }
                  }
                } catch (e) {
                  util.noop();
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_windows) {
            util.powerShell("Get-CimInstance Win32_Printer | select PrinterStatus,Name,DriverName,Local,Default,Shared | fl").then((stdout, error) => {
              if (!error) {
                const parts = stdout.toString().split(/\n\s*\n/);
                for (let i = 0; i < parts.length; i++) {
                  const printer2 = parseWindowsPrinters(parts[i].split("\n"), i);
                  if (printer2.name || printer2.model) {
                    result2.push(printer2);
                  }
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_sunos) {
            resolve(null);
          }
        });
      });
    }
    exports2.printer = printer;
  }
});

// node_modules/systeminformation/lib/usb.js
var require_usb = __commonJS({
  "node_modules/systeminformation/lib/usb.js"(exports2) {
    "use strict";
    var exec = require("child_process").exec;
    var util = require_util();
    var _platform = process.platform;
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _sunos = _platform === "sunos";
    function getLinuxUsbType(type, name) {
      let result2 = type;
      const str = (name + " " + type).toLowerCase();
      if (str.indexOf("camera") >= 0) {
        result2 = "Camera";
      } else if (str.indexOf("hub") >= 0) {
        result2 = "Hub";
      } else if (str.indexOf("keybrd") >= 0) {
        result2 = "Keyboard";
      } else if (str.indexOf("keyboard") >= 0) {
        result2 = "Keyboard";
      } else if (str.indexOf("mouse") >= 0) {
        result2 = "Mouse";
      } else if (str.indexOf("stora") >= 0) {
        result2 = "Storage";
      } else if (str.indexOf("microp") >= 0) {
        result2 = "Microphone";
      } else if (str.indexOf("headset") >= 0) {
        result2 = "Audio";
      } else if (str.indexOf("audio") >= 0) {
        result2 = "Audio";
      }
      return result2;
    }
    function parseLinuxUsb(usb2) {
      const result2 = {};
      const lines = usb2.split("\n");
      if (lines && lines.length && lines[0].indexOf("Device") >= 0) {
        const parts = lines[0].split(" ");
        result2.bus = parseInt(parts[0], 10);
        if (parts[2]) {
          result2.deviceId = parseInt(parts[2], 10);
        } else {
          result2.deviceId = null;
        }
      } else {
        result2.bus = null;
        result2.deviceId = null;
      }
      const idVendor = util.getValue(lines, "idVendor", " ", true).trim();
      let vendorParts = idVendor.split(" ");
      vendorParts.shift();
      const vendor = vendorParts.join(" ");
      const idProduct = util.getValue(lines, "idProduct", " ", true).trim();
      let productParts = idProduct.split(" ");
      productParts.shift();
      const product = productParts.join(" ");
      const interfaceClass = util.getValue(lines, "bInterfaceClass", " ", true).trim();
      let interfaceClassParts = interfaceClass.split(" ");
      interfaceClassParts.shift();
      const usbType = interfaceClassParts.join(" ");
      const iManufacturer = util.getValue(lines, "iManufacturer", " ", true).trim();
      let iManufacturerParts = iManufacturer.split(" ");
      iManufacturerParts.shift();
      const manufacturer = iManufacturerParts.join(" ");
      const iSerial = util.getValue(lines, "iSerial", " ", true).trim();
      let iSerialParts = iSerial.split(" ");
      iSerialParts.shift();
      const serial = iSerialParts.join(" ");
      result2.id = (idVendor.startsWith("0x") ? idVendor.split(" ")[0].substr(2, 10) : "") + ":" + (idProduct.startsWith("0x") ? idProduct.split(" ")[0].substr(2, 10) : "");
      result2.name = product;
      result2.type = getLinuxUsbType(usbType, product);
      result2.removable = null;
      result2.vendor = vendor;
      result2.manufacturer = manufacturer;
      result2.maxPower = util.getValue(lines, "MaxPower", " ", true);
      result2.serialNumber = serial;
      return result2;
    }
    function getDarwinUsbType(name) {
      let result2 = "";
      if (name.indexOf("camera") >= 0) {
        result2 = "Camera";
      } else if (name.indexOf("touch bar") >= 0) {
        result2 = "Touch Bar";
      } else if (name.indexOf("controller") >= 0) {
        result2 = "Controller";
      } else if (name.indexOf("headset") >= 0) {
        result2 = "Audio";
      } else if (name.indexOf("keyboard") >= 0) {
        result2 = "Keyboard";
      } else if (name.indexOf("trackpad") >= 0) {
        result2 = "Trackpad";
      } else if (name.indexOf("sensor") >= 0) {
        result2 = "Sensor";
      } else if (name.indexOf("bthusb") >= 0) {
        result2 = "Bluetooth";
      } else if (name.indexOf("bth") >= 0) {
        result2 = "Bluetooth";
      } else if (name.indexOf("rfcomm") >= 0) {
        result2 = "Bluetooth";
      } else if (name.indexOf("usbhub") >= 0) {
        result2 = "Hub";
      } else if (name.indexOf(" hub") >= 0) {
        result2 = "Hub";
      } else if (name.indexOf("mouse") >= 0) {
        result2 = "Mouse";
      } else if (name.indexOf("microp") >= 0) {
        result2 = "Microphone";
      } else if (name.indexOf("removable") >= 0) {
        result2 = "Storage";
      }
      return result2;
    }
    function parseDarwinUsb(usb2, id) {
      const result2 = {};
      result2.id = id;
      usb2 = usb2.replace(/ \|/g, "");
      usb2 = usb2.trim();
      let lines = usb2.split("\n");
      lines.shift();
      try {
        for (let i = 0; i < lines.length; i++) {
          lines[i] = lines[i].trim();
          lines[i] = lines[i].replace(/=/g, ":");
          if (lines[i] !== "{" && lines[i] !== "}" && lines[i + 1] && lines[i + 1].trim() !== "}") {
            lines[i] = lines[i] + ",";
          }
          lines[i] = lines[i].replace(":Yes,", ':"Yes",');
          lines[i] = lines[i].replace(": Yes,", ': "Yes",');
          lines[i] = lines[i].replace(": Yes", ': "Yes"');
          lines[i] = lines[i].replace(":No,", ':"No",');
          lines[i] = lines[i].replace(": No,", ': "No",');
          lines[i] = lines[i].replace(": No", ': "No"');
          lines[i] = lines[i].replace("((", "").replace("))", "");
          const match = /<(\w+)>/.exec(lines[i]);
          if (match) {
            const number = match[0];
            lines[i] = lines[i].replace(number, `"${number}"`);
          }
        }
        const usbObj = JSON.parse(lines.join("\n"));
        const removableDrive = (usbObj["Built-In"] ? usbObj["Built-In"].toLowerCase() !== "yes" : true) && (usbObj["non-removable"] ? usbObj["non-removable"].toLowerCase() === "no" : true);
        result2.bus = null;
        result2.deviceId = null;
        result2.id = usbObj["USB Address"] || null;
        result2.name = usbObj["kUSBProductString"] || usbObj["USB Product Name"] || null;
        result2.type = getDarwinUsbType((usbObj["kUSBProductString"] || usbObj["USB Product Name"] || "").toLowerCase() + (removableDrive ? " removable" : ""));
        result2.removable = usbObj["non-removable"] ? usbObj["non-removable"].toLowerCase() || false : true;
        result2.vendor = usbObj["kUSBVendorString"] || usbObj["USB Vendor Name"] || null;
        result2.manufacturer = usbObj["kUSBVendorString"] || usbObj["USB Vendor Name"] || null;
        result2.maxPower = null;
        result2.serialNumber = usbObj["kUSBSerialNumberString"] || null;
        if (result2.name) {
          return result2;
        } else {
          return null;
        }
      } catch (e) {
        return null;
      }
    }
    function getWindowsUsbTypeCreation(creationclass, name) {
      let result2 = "";
      if (name.indexOf("storage") >= 0) {
        result2 = "Storage";
      } else if (name.indexOf("speicher") >= 0) {
        result2 = "Storage";
      } else if (creationclass.indexOf("usbhub") >= 0) {
        result2 = "Hub";
      } else if (creationclass.indexOf("storage") >= 0) {
        result2 = "Storage";
      } else if (creationclass.indexOf("usbcontroller") >= 0) {
        result2 = "Controller";
      } else if (creationclass.indexOf("keyboard") >= 0) {
        result2 = "Keyboard";
      } else if (creationclass.indexOf("pointing") >= 0) {
        result2 = "Mouse";
      } else if (creationclass.indexOf("microp") >= 0) {
        result2 = "Microphone";
      } else if (creationclass.indexOf("disk") >= 0) {
        result2 = "Storage";
      }
      return result2;
    }
    function parseWindowsUsb(lines, id) {
      const usbType = getWindowsUsbTypeCreation(util.getValue(lines, "CreationClassName", ":").toLowerCase(), util.getValue(lines, "name", ":").toLowerCase());
      if (usbType) {
        const result2 = {};
        result2.bus = null;
        result2.deviceId = util.getValue(lines, "deviceid", ":");
        result2.id = id;
        result2.name = util.getValue(lines, "name", ":");
        result2.type = usbType;
        result2.removable = null;
        result2.vendor = null;
        result2.manufacturer = util.getValue(lines, "Manufacturer", ":");
        result2.maxPower = null;
        result2.serialNumber = null;
        return result2;
      } else {
        return null;
      }
    }
    function usb(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = [];
          if (_linux) {
            const cmd = "export LC_ALL=C; lsusb -v 2>/dev/null; unset LC_ALL";
            exec(cmd, { maxBuffer: 1024 * 1024 * 128 }, function(error, stdout) {
              if (!error) {
                const parts = ("\n\n" + stdout.toString()).split("\n\nBus ");
                for (let i = 1; i < parts.length; i++) {
                  const usb2 = parseLinuxUsb(parts[i]);
                  result2.push(usb2);
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_darwin) {
            let cmd = "ioreg -p IOUSB -c AppleUSBRootHubDevice -w0 -l";
            exec(cmd, { maxBuffer: 1024 * 1024 * 128 }, function(error, stdout) {
              if (!error) {
                const parts = stdout.toString().split(" +-o ");
                for (let i = 1; i < parts.length; i++) {
                  const usb2 = parseDarwinUsb(parts[i]);
                  if (usb2) {
                    result2.push(usb2);
                  }
                }
                if (callback) {
                  callback(result2);
                }
                resolve(result2);
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_windows) {
            util.powerShell('Get-CimInstance CIM_LogicalDevice | where { $_.Description -match "USB"} | select Name,CreationClassName,DeviceId,Manufacturer | fl').then((stdout, error) => {
              if (!error) {
                const parts = stdout.toString().split(/\n\s*\n/);
                for (let i = 0; i < parts.length; i++) {
                  const usb2 = parseWindowsUsb(parts[i].split("\n"), i);
                  if (usb2 && result2.filter((x) => x.deviceId === usb2.deviceId).length === 0) {
                    result2.push(usb2);
                  }
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_sunos || _freebsd || _openbsd || _netbsd) {
            resolve(null);
          }
        });
      });
    }
    exports2.usb = usb;
  }
});

// node_modules/systeminformation/lib/audio.js
var require_audio = __commonJS({
  "node_modules/systeminformation/lib/audio.js"(exports2) {
    "use strict";
    var exec = require("child_process").exec;
    var execSync = require("child_process").execSync;
    var util = require_util();
    var _platform = process.platform;
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _sunos = _platform === "sunos";
    function parseAudioType(str, input, output) {
      str = str.toLowerCase();
      let result2 = "";
      if (str.indexOf("input") >= 0) {
        result2 = "Microphone";
      }
      if (str.indexOf("display audio") >= 0) {
        result2 = "Speaker";
      }
      if (str.indexOf("speak") >= 0) {
        result2 = "Speaker";
      }
      if (str.indexOf("laut") >= 0) {
        result2 = "Speaker";
      }
      if (str.indexOf("loud") >= 0) {
        result2 = "Speaker";
      }
      if (str.indexOf("head") >= 0) {
        result2 = "Headset";
      }
      if (str.indexOf("mic") >= 0) {
        result2 = "Microphone";
      }
      if (str.indexOf("mikr") >= 0) {
        result2 = "Microphone";
      }
      if (str.indexOf("phone") >= 0) {
        result2 = "Phone";
      }
      if (str.indexOf("controll") >= 0) {
        result2 = "Controller";
      }
      if (str.indexOf("line o") >= 0) {
        result2 = "Line Out";
      }
      if (str.indexOf("digital o") >= 0) {
        result2 = "Digital Out";
      }
      if (str.indexOf("smart sound technology") >= 0) {
        result2 = "Digital Signal Processor";
      }
      if (str.indexOf("high definition audio") >= 0) {
        result2 = "Sound Driver";
      }
      if (!result2 && output) {
        result2 = "Speaker";
      } else if (!result2 && input) {
        result2 = "Microphone";
      }
      return result2;
    }
    function getLinuxAudioPci() {
      let cmd = "lspci -v 2>/dev/null";
      let result2 = [];
      try {
        const parts = execSync(cmd, util.execOptsLinux).toString().split("\n\n");
        parts.forEach((element) => {
          const lines = element.split("\n");
          if (lines && lines.length && lines[0].toLowerCase().indexOf("audio") >= 0) {
            const audio2 = {};
            audio2.slotId = lines[0].split(" ")[0];
            audio2.driver = util.getValue(lines, "Kernel driver in use", ":", true) || util.getValue(lines, "Kernel modules", ":", true);
            result2.push(audio2);
          }
        });
        return result2;
      } catch (e) {
        return result2;
      }
    }
    function parseLinuxAudioPciMM(lines, audioPCI) {
      const result2 = {};
      const slotId = util.getValue(lines, "Slot");
      const pciMatch = audioPCI.filter(function(item) {
        return item.slotId === slotId;
      });
      result2.id = slotId;
      result2.name = util.getValue(lines, "SDevice");
      result2.manufacturer = util.getValue(lines, "SVendor");
      result2.revision = util.getValue(lines, "Rev");
      result2.driver = pciMatch && pciMatch.length === 1 && pciMatch[0].driver ? pciMatch[0].driver : "";
      result2.default = null;
      result2.channel = "PCIe";
      result2.type = parseAudioType(result2.name, null, null);
      result2.in = null;
      result2.out = null;
      result2.status = "online";
      return result2;
    }
    function parseDarwinChannel(str) {
      let result2 = "";
      if (str.indexOf("builtin") >= 0) {
        result2 = "Built-In";
      }
      if (str.indexOf("extern") >= 0) {
        result2 = "Audio-Jack";
      }
      if (str.indexOf("hdmi") >= 0) {
        result2 = "HDMI";
      }
      if (str.indexOf("displayport") >= 0) {
        result2 = "Display-Port";
      }
      if (str.indexOf("usb") >= 0) {
        result2 = "USB";
      }
      if (str.indexOf("pci") >= 0) {
        result2 = "PCIe";
      }
      return result2;
    }
    function parseDarwinAudio(audioObject, id) {
      const result2 = {};
      const channelStr = ((audioObject.coreaudio_device_transport || "") + " " + (audioObject._name || "")).toLowerCase();
      result2.id = id;
      result2.name = audioObject._name;
      result2.manufacturer = audioObject.coreaudio_device_manufacturer;
      result2.revision = null;
      result2.driver = null;
      result2.default = !!(audioObject.coreaudio_default_audio_input_device || "") || !!(audioObject.coreaudio_default_audio_output_device || "");
      result2.channel = parseDarwinChannel(channelStr);
      result2.type = parseAudioType(result2.name, !!(audioObject.coreaudio_device_input || ""), !!(audioObject.coreaudio_device_output || ""));
      result2.in = !!(audioObject.coreaudio_device_input || "");
      result2.out = !!(audioObject.coreaudio_device_output || "");
      result2.status = "online";
      return result2;
    }
    function parseWindowsAudio(lines) {
      const result2 = {};
      const status = util.getValue(lines, "StatusInfo", ":");
      result2.id = util.getValue(lines, "DeviceID", ":");
      result2.name = util.getValue(lines, "name", ":");
      result2.manufacturer = util.getValue(lines, "manufacturer", ":");
      result2.revision = null;
      result2.driver = null;
      result2.default = null;
      result2.channel = null;
      result2.type = parseAudioType(result2.name, null, null);
      result2.in = null;
      result2.out = null;
      result2.status = status;
      return result2;
    }
    function audio(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = [];
          if (_linux || _freebsd || _openbsd || _netbsd) {
            let cmd = "lspci -vmm 2>/dev/null";
            exec(cmd, function(error, stdout) {
              if (!error) {
                const audioPCI = getLinuxAudioPci();
                const parts = stdout.toString().split("\n\n");
                parts.forEach((element) => {
                  const lines = element.split("\n");
                  if (util.getValue(lines, "class", ":", true).toLowerCase().indexOf("audio") >= 0) {
                    const audio2 = parseLinuxAudioPciMM(lines, audioPCI);
                    result2.push(audio2);
                  }
                });
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_darwin) {
            let cmd = "system_profiler SPAudioDataType -json";
            exec(cmd, function(error, stdout) {
              if (!error) {
                try {
                  const outObj = JSON.parse(stdout.toString());
                  if (outObj.SPAudioDataType && outObj.SPAudioDataType.length && outObj.SPAudioDataType[0] && outObj.SPAudioDataType[0]["_items"] && outObj.SPAudioDataType[0]["_items"].length) {
                    for (let i = 0; i < outObj.SPAudioDataType[0]["_items"].length; i++) {
                      const audio2 = parseDarwinAudio(outObj.SPAudioDataType[0]["_items"][i], i);
                      result2.push(audio2);
                    }
                  }
                } catch (e) {
                  util.noop();
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_windows) {
            util.powerShell("Get-CimInstance Win32_SoundDevice | select DeviceID,StatusInfo,Name,Manufacturer | fl").then((stdout, error) => {
              if (!error) {
                const parts = stdout.toString().split(/\n\s*\n/);
                parts.forEach((element) => {
                  const lines = element.split("\n");
                  if (util.getValue(lines, "name", ":")) {
                    result2.push(parseWindowsAudio(lines));
                  }
                });
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_sunos) {
            resolve(null);
          }
        });
      });
    }
    exports2.audio = audio;
  }
});

// node_modules/systeminformation/lib/bluetoothVendors.js
var require_bluetoothVendors = __commonJS({
  "node_modules/systeminformation/lib/bluetoothVendors.js"(exports2, module2) {
    "use strict";
    module2.exports = {
      0: "Ericsson Technology Licensing",
      1: "Nokia Mobile Phones",
      2: "Intel Corp.",
      3: "IBM Corp.",
      4: "Toshiba Corp.",
      5: "3Com",
      6: "Microsoft",
      7: "Lucent",
      8: "Motorola",
      9: "Infineon Technologies AG",
      10: "Cambridge Silicon Radio",
      11: "Silicon Wave",
      12: "Digianswer A/S",
      13: "Texas Instruments Inc.",
      14: "Ceva, Inc. (formerly Parthus Technologies, Inc.)",
      15: "Broadcom Corporation",
      16: "Mitel Semiconductor",
      17: "Widcomm, Inc",
      18: "Zeevo, Inc.",
      19: "Atmel Corporation",
      20: "Mitsubishi Electric Corporation",
      21: "RTX Telecom A/S",
      22: "KC Technology Inc.",
      23: "NewLogic",
      24: "Transilica, Inc.",
      25: "Rohde & Schwarz GmbH & Co. KG",
      26: "TTPCom Limited",
      27: "Signia Technologies, Inc.",
      28: "Conexant Systems Inc.",
      29: "Qualcomm",
      30: "Inventel",
      31: "AVM Berlin",
      32: "BandSpeed, Inc.",
      33: "Mansella Ltd",
      34: "NEC Corporation",
      35: "WavePlus Technology Co., Ltd.",
      36: "Alcatel",
      37: "NXP Semiconductors (formerly Philips Semiconductors)",
      38: "C Technologies",
      39: "Open Interface",
      40: "R F Micro Devices",
      41: "Hitachi Ltd",
      42: "Symbol Technologies, Inc.",
      43: "Tenovis",
      44: "Macronix International Co. Ltd.",
      45: "GCT Semiconductor",
      46: "Norwood Systems",
      47: "MewTel Technology Inc.",
      48: "ST Microelectronics",
      49: "Synopsis",
      50: "Red-M (Communications) Ltd",
      51: "Commil Ltd",
      52: "Computer Access Technology Corporation (CATC)",
      53: "Eclipse (HQ Espana) S.L.",
      54: "Renesas Electronics Corporation",
      55: "Mobilian Corporation",
      56: "Terax",
      57: "Integrated System Solution Corp.",
      58: "Matsushita Electric Industrial Co., Ltd.",
      59: "Gennum Corporation",
      60: "BlackBerry Limited (formerly Research In Motion)",
      61: "IPextreme, Inc.",
      62: "Systems and Chips, Inc.",
      63: "Bluetooth SIG, Inc.",
      64: "Seiko Epson Corporation",
      65: "Integrated Silicon Solution Taiwan, Inc.",
      66: "CONWISE Technology Corporation Ltd",
      67: "PARROT SA",
      68: "Socket Mobile",
      69: "Atheros Communications, Inc.",
      70: "MediaTek, Inc.",
      71: "Bluegiga",
      72: "Marvell Technology Group Ltd.",
      73: "3DSP Corporation",
      74: "Accel Semiconductor Ltd.",
      75: "Continental Automotive Systems",
      76: "Apple, Inc.",
      77: "Staccato Communications, Inc.",
      78: "Avago Technologies",
      79: "APT Licensing Ltd.",
      80: "SiRF Technology",
      81: "Tzero Technologies, Inc.",
      82: "J&M Corporation",
      83: "Free2move AB",
      84: "3DiJoy Corporation",
      85: "Plantronics, Inc.",
      86: "Sony Ericsson Mobile Communications",
      87: "Harman International Industries, Inc.",
      88: "Vizio, Inc.",
      89: "Nordic Semiconductor ASA",
      90: "EM Microelectronic-Marin SA",
      91: "Ralink Technology Corporation",
      92: "Belkin International, Inc.",
      93: "Realtek Semiconductor Corporation",
      94: "Stonestreet One, LLC",
      95: "Wicentric, Inc.",
      96: "RivieraWaves S.A.S",
      97: "RDA Microelectronics",
      98: "Gibson Guitars",
      99: "MiCommand Inc.",
      100: "Band XI International, LLC",
      101: "Hewlett-Packard Company",
      102: "9Solutions Oy",
      103: "GN Netcom A/S",
      104: "General Motors",
      105: "A&D Engineering, Inc.",
      106: "MindTree Ltd.",
      107: "Polar Electro OY",
      108: "Beautiful Enterprise Co., Ltd.",
      109: "BriarTek, Inc.",
      110: "Summit Data Communications, Inc.",
      111: "Sound ID",
      112: "Monster, LLC",
      113: "connectBlue AB",
      114: "ShangHai Super Smart Electronics Co. Ltd.",
      115: "Group Sense Ltd.",
      116: "Zomm, LLC",
      117: "Samsung Electronics Co. Ltd.",
      118: "Creative Technology Ltd.",
      119: "Laird Technologies",
      120: "Nike, Inc.",
      121: "lesswire AG",
      122: "MStar Semiconductor, Inc.",
      123: "Hanlynn Technologies",
      124: "A & R Cambridge",
      125: "Seers Technology Co. Ltd",
      126: "Sports Tracking Technologies Ltd.",
      127: "Autonet Mobile",
      128: "DeLorme Publishing Company, Inc.",
      129: "WuXi Vimicro",
      130: "Sennheiser Communications A/S",
      131: "TimeKeeping Systems, Inc.",
      132: "Ludus Helsinki Ltd.",
      133: "BlueRadios, Inc.",
      134: "equinox AG",
      135: "Garmin International, Inc.",
      136: "Ecotest",
      137: "GN ReSound A/S",
      138: "Jawbone",
      139: "Topcorn Positioning Systems, LLC",
      140: "Gimbal Inc. (formerly Qualcomm Labs, Inc. and Qualcomm Retail Solutions, Inc.)",
      141: "Zscan Software",
      142: "Quintic Corp.",
      143: "Stollman E+V GmbH",
      144: "Funai Electric Co., Ltd.",
      145: "Advanced PANMOBIL Systems GmbH & Co. KG",
      146: "ThinkOptics, Inc.",
      147: "Universal Electronics, Inc.",
      148: "Airoha Technology Corp.",
      149: "NEC Lighting, Ltd.",
      150: "ODM Technology, Inc.",
      151: "ConnecteDevice Ltd.",
      152: "zer01.tv GmbH",
      153: "i.Tech Dynamic Global Distribution Ltd.",
      154: "Alpwise",
      155: "Jiangsu Toppower Automotive Electronics Co., Ltd.",
      156: "Colorfy, Inc.",
      157: "Geoforce Inc.",
      158: "Bose Corporation",
      159: "Suunto Oy",
      160: "Kensington Computer Products Group",
      161: "SR-Medizinelektronik",
      162: "Vertu Corporation Limited",
      163: "Meta Watch Ltd.",
      164: "LINAK A/S",
      165: "OTL Dynamics LLC",
      166: "Panda Ocean Inc.",
      167: "Visteon Corporation",
      168: "ARP Devices Limited",
      169: "Magneti Marelli S.p.A",
      170: "CAEN RFID srl",
      171: "Ingenieur-Systemgruppe Zahn GmbH",
      172: "Green Throttle Games",
      173: "Peter Systemtechnik GmbH",
      174: "Omegawave Oy",
      175: "Cinetix",
      176: "Passif Semiconductor Corp",
      177: "Saris Cycling Group, Inc",
      178: "Bekey A/S",
      179: "Clarinox Technologies Pty. Ltd.",
      180: "BDE Technology Co., Ltd.",
      181: "Swirl Networks",
      182: "Meso international",
      183: "TreLab Ltd",
      184: "Qualcomm Innovation Center, Inc. (QuIC)",
      185: "Johnson Controls, Inc.",
      186: "Starkey Laboratories Inc.",
      187: "S-Power Electronics Limited",
      188: "Ace Sensor Inc",
      189: "Aplix Corporation",
      190: "AAMP of America",
      191: "Stalmart Technology Limited",
      192: "AMICCOM Electronics Corporation",
      193: "Shenzhen Excelsecu Data Technology Co.,Ltd",
      194: "Geneq Inc.",
      195: "adidas AG",
      196: "LG Electronics",
      197: "Onset Computer Corporation",
      198: "Selfly BV",
      199: "Quuppa Oy.",
      200: "GeLo Inc",
      201: "Evluma",
      202: "MC10",
      203: "Binauric SE",
      204: "Beats Electronics",
      205: "Microchip Technology Inc.",
      206: "Elgato Systems GmbH",
      207: "ARCHOS SA",
      208: "Dexcom, Inc.",
      209: "Polar Electro Europe B.V.",
      210: "Dialog Semiconductor B.V.",
      211: "Taixingbang\xA0Technology (HK) Co,. LTD.",
      212: "Kawantech",
      213: "Austco Communication Systems",
      214: "Timex Group USA, Inc.",
      215: "Qualcomm Technologies, Inc.",
      216: "Qualcomm Connected Experiences, Inc.",
      217: "Voyetra Turtle Beach",
      218: "txtr GmbH",
      219: "Biosentronics",
      220: "Procter & Gamble",
      221: "Hosiden Corporation",
      222: "Muzik LLC",
      223: "Misfit Wearables Corp",
      224: "Google",
      225: "Danlers Ltd",
      226: "Semilink Inc",
      227: "inMusic Brands, Inc",
      228: "L.S. Research Inc.",
      229: "Eden Software Consultants Ltd.",
      230: "Freshtemp",
      231: "KS Technologies",
      232: "ACTS Technologies",
      233: "Vtrack Systems",
      234: "Nielsen-Kellerman Company",
      235: "Server Technology, Inc.",
      236: "BioResearch Associates",
      237: "Jolly Logic, LLC",
      238: "Above Average Outcomes, Inc.",
      239: "Bitsplitters GmbH",
      240: "PayPal, Inc.",
      241: "Witron Technology Limited",
      242: "Aether Things\xA0Inc. (formerly Morse Project Inc.)",
      243: "Kent Displays Inc.",
      244: "Nautilus Inc.",
      245: "Smartifier Oy",
      246: "Elcometer Limited",
      247: "VSN Technologies Inc.",
      248: "AceUni Corp., Ltd.",
      249: "StickNFind",
      250: "Crystal Code AB",
      251: "KOUKAAM a.s.",
      252: "Delphi Corporation",
      253: "ValenceTech Limited",
      254: "Reserved",
      255: "Typo Products, LLC",
      256: "TomTom International BV",
      257: "Fugoo, Inc",
      258: "Keiser Corporation",
      259: "Bang & Olufsen A/S",
      260: "PLUS Locations Systems Pty Ltd",
      261: "Ubiquitous Computing Technology Corporation",
      262: "Innovative Yachtter Solutions",
      263: "William Demant Holding A/S",
      264: "Chicony Electronics Co., Ltd.",
      265: "Atus BV",
      266: "Codegate Ltd.",
      267: "ERi, Inc.",
      268: "Transducers Direct, LLC",
      269: "Fujitsu Ten Limited",
      270: "Audi AG",
      271: "HiSilicon Technologies Co., Ltd.",
      272: "Nippon Seiki Co., Ltd.",
      273: "Steelseries ApS",
      274: "vyzybl Inc.",
      275: "Openbrain Technologies, Co., Ltd.",
      276: "Xensr",
      277: "e.solutions",
      278: "1OAK Technologies",
      279: "Wimoto Technologies Inc",
      280: "Radius Networks, Inc.",
      281: "Wize Technology Co., Ltd.",
      282: "Qualcomm Labs, Inc.",
      283: "Aruba Networks",
      284: "Baidu",
      285: "Arendi AG",
      286: "Skoda Auto a.s.",
      287: "Volkswagon AG",
      288: "Porsche AG",
      289: "Sino Wealth Electronic Ltd.",
      290: "AirTurn, Inc.",
      291: "Kinsa, Inc.",
      292: "HID Global",
      293: "SEAT es",
      294: "Promethean Ltd.",
      295: "Salutica Allied Solutions",
      296: "GPSI Group Pty Ltd",
      297: "Nimble Devices Oy",
      298: "Changzhou Yongse Infotech Co., Ltd",
      299: "SportIQ",
      300: "TEMEC Instruments B.V.",
      301: "Sony Corporation",
      302: "ASSA ABLOY",
      303: "Clarion Co., Ltd.",
      304: "Warehouse Innovations",
      305: "Cypress Semiconductor Corporation",
      306: "MADS Inc",
      307: "Blue Maestro Limited",
      308: "Resolution Products, Inc.",
      309: "Airewear LLC",
      310: "Seed Labs, Inc. (formerly ETC sp. z.o.o.)",
      311: "Prestigio Plaza Ltd.",
      312: "NTEO Inc.",
      313: "Focus Systems Corporation",
      314: "Tencent Holdings Limited",
      315: "Allegion",
      316: "Murata Manufacuring Co., Ltd.",
      318: "Nod, Inc.",
      319: "B&B Manufacturing Company",
      320: "Alpine\xA0Electronics\xA0(China)\xA0Co.,\xA0Ltd",
      321: "FedEx Services",
      322: "Grape Systems Inc.",
      323: "Bkon Connect",
      324: "Lintech GmbH",
      325: "Novatel Wireless",
      326: "Ciright",
      327: "Mighty Cast, Inc.",
      328: "Ambimat Electronics",
      329: "Perytons Ltd.",
      330: "Tivoli Audio, LLC",
      331: "Master Lock",
      332: "Mesh-Net Ltd",
      333: "Huizhou Desay SV Automotive CO., LTD.",
      334: "Tangerine, Inc.",
      335: "B&W Group Ltd.",
      336: "Pioneer Corporation",
      337: "OnBeep",
      338: "Vernier Software & Technology",
      339: "ROL Ergo",
      340: "Pebble Technology",
      341: "NETATMO",
      342: "Accumulate AB",
      343: "Anhui Huami Information Technology Co., Ltd.",
      344: "Inmite s.r.o.",
      345: "ChefSteps, Inc.",
      346: "micas AG",
      347: "Biomedical Research Ltd.",
      348: "Pitius Tec S.L.",
      349: "Estimote, Inc.",
      350: "Unikey Technologies, Inc.",
      351: "Timer Cap Co.",
      352: "AwoX",
      353: "yikes",
      354: "MADSGlobal NZ Ltd.",
      355: "PCH International",
      356: "Qingdao Yeelink Information Technology Co., Ltd.",
      357: "Milwaukee Tool (formerly Milwaukee Electric Tools)",
      358: "MISHIK Pte Ltd",
      359: "Bayer HealthCare",
      360: "Spicebox LLC",
      361: "emberlight",
      362: "Cooper-Atkins Corporation",
      363: "Qblinks",
      364: "MYSPHERA",
      365: "LifeScan Inc",
      366: "Volantic AB",
      367: "Podo Labs, Inc",
      368: "Roche Diabetes Care AG",
      369: "Amazon Fulfillment Service",
      370: "Connovate Technology Private Limited",
      371: "Kocomojo, LLC",
      372: "Everykey LLC",
      373: "Dynamic Controls",
      374: "SentriLock",
      375: "I-SYST inc.",
      376: "CASIO COMPUTER CO., LTD.",
      377: "LAPIS Semiconductor Co., Ltd.",
      378: "Telemonitor, Inc.",
      379: "taskit GmbH",
      380: "Daimler AG",
      381: "BatAndCat",
      382: "BluDotz Ltd",
      383: "XTel ApS",
      384: "Gigaset Communications GmbH",
      385: "Gecko Health Innovations, Inc.",
      386: "HOP Ubiquitous",
      387: "To Be Assigned",
      388: "Nectar",
      389: "bel\u2019apps LLC",
      390: "CORE Lighting Ltd",
      391: "Seraphim Sense Ltd",
      392: "Unico RBC",
      393: "Physical Enterprises Inc.",
      394: "Able Trend Technology Limited",
      395: "Konica Minolta, Inc.",
      396: "Wilo SE",
      397: "Extron Design Services",
      398: "Fitbit, Inc.",
      399: "Fireflies Systems",
      400: "Intelletto Technologies Inc.",
      401: "FDK CORPORATION",
      402: "Cloudleaf, Inc",
      403: "Maveric Automation LLC",
      404: "Acoustic Stream Corporation",
      405: "Zuli",
      406: "Paxton Access Ltd",
      407: "WiSilica Inc",
      408: "Vengit Limited",
      409: "SALTO SYSTEMS S.L.",
      410: "TRON Forum (formerly T-Engine Forum)",
      411: "CUBETECH s.r.o.",
      412: "Cokiya Incorporated",
      413: "CVS Health",
      414: "Ceruus",
      415: "Strainstall Ltd",
      416: "Channel Enterprises (HK) Ltd.",
      417: "FIAMM",
      418: "GIGALANE.CO.,LTD",
      419: "EROAD",
      420: "Mine Safety Appliances",
      421: "Icon Health and Fitness",
      422: "Asandoo GmbH",
      423: "ENERGOUS CORPORATION",
      424: "Taobao",
      425: "Canon Inc.",
      426: "Geophysical Technology Inc.",
      427: "Facebook, Inc.",
      428: "Nipro Diagnostics, Inc.",
      429: "FlightSafety International",
      430: "Earlens Corporation",
      431: "Sunrise Micro Devices, Inc.",
      432: "Star Micronics Co., Ltd.",
      433: "Netizens Sp. z o.o.",
      434: "Nymi Inc.",
      435: "Nytec, Inc.",
      436: "Trineo Sp. z o.o.",
      437: "Nest Labs Inc.",
      438: "LM Technologies Ltd",
      439: "General Electric Company",
      440: "i+D3 S.L.",
      441: "HANA Micron",
      442: "Stages Cycling LLC",
      443: "Cochlear Bone Anchored Solutions AB",
      444: "SenionLab AB",
      445: "Syszone Co., Ltd",
      446: "Pulsate Mobile Ltd.",
      447: "Hong Kong HunterSun Electronic Limited",
      448: "pironex GmbH",
      449: "BRADATECH Corp.",
      450: "Transenergooil AG",
      451: "Bunch",
      452: "DME Microelectronics",
      453: "Bitcraze AB",
      454: "HASWARE Inc.",
      455: "Abiogenix Inc.",
      456: "Poly-Control ApS",
      457: "Avi-on",
      458: "Laerdal Medical AS",
      459: "Fetch My Pet",
      460: "Sam Labs Ltd.",
      461: "Chengdu Synwing Technology Ltd",
      462: "HOUWA SYSTEM DESIGN, k.k.",
      463: "BSH",
      464: "Primus Inter Pares Ltd",
      465: "August",
      466: "Gill Electronics",
      467: "Sky Wave Design",
      468: "Newlab S.r.l.",
      469: "ELAD srl",
      470: "G-wearables inc.",
      471: "Squadrone Systems Inc.",
      472: "Code Corporation",
      473: "Savant Systems LLC",
      474: "Logitech International SA",
      475: "Innblue Consulting",
      476: "iParking Ltd.",
      477: "Koninklijke Philips Electronics N.V.",
      478: "Minelab Electronics Pty Limited",
      479: "Bison Group Ltd.",
      480: "Widex A/S",
      481: "Jolla Ltd",
      482: "Lectronix, Inc.",
      483: "Caterpillar Inc",
      484: "Freedom Innovations",
      485: "Dynamic Devices Ltd",
      486: "Technology Solutions (UK) Ltd",
      487: "IPS Group Inc.",
      488: "STIR",
      489: "Sano, Inc",
      490: "Advanced Application Design, Inc.",
      491: "AutoMap LLC",
      492: "Spreadtrum Communications Shanghai Ltd",
      493: "CuteCircuit LTD",
      494: "Valeo Service",
      495: "Fullpower Technologies, Inc.",
      496: "KloudNation",
      497: "Zebra Technologies Corporation",
      498: "Itron, Inc.",
      499: "The University of Tokyo",
      500: "UTC Fire and Security",
      501: "Cool Webthings Limited",
      502: "DJO Global",
      503: "Gelliner Limited",
      504: "Anyka (Guangzhou) Microelectronics Technology Co, LTD",
      505: "Medtronic, Inc.",
      506: "Gozio, Inc.",
      507: "Form Lifting, LLC",
      508: "Wahoo Fitness, LLC",
      509: "Kontakt Micro-Location Sp. z o.o.",
      510: "Radio System Corporation",
      511: "Freescale Semiconductor, Inc.",
      512: "Verifone Systems PTe Ltd. Taiwan Branch",
      513: "AR Timing",
      514: "Rigado LLC",
      515: "Kemppi Oy",
      516: "Tapcentive Inc.",
      517: "Smartbotics Inc.",
      518: "Otter Products, LLC",
      519: "STEMP Inc.",
      520: "LumiGeek LLC",
      521: "InvisionHeart Inc.",
      522: "Macnica Inc. ",
      523: "Jaguar Land Rover Limited",
      524: "CoroWare Technologies, Inc",
      525: "Simplo Technology Co., LTD",
      526: "Omron Healthcare Co., LTD",
      527: "Comodule GMBH",
      528: "ikeGPS",
      529: "Telink Semiconductor Co. Ltd",
      530: "Interplan Co., Ltd",
      531: "Wyler AG",
      532: "IK Multimedia Production srl",
      533: "Lukoton Experience Oy",
      534: "MTI Ltd",
      535: "Tech4home, Lda",
      536: "Hiotech AB",
      537: "DOTT Limited",
      538: "Blue Speck Labs, LLC",
      539: "Cisco Systems, Inc",
      540: "Mobicomm Inc",
      541: "Edamic",
      542: "Goodnet, Ltd",
      543: "Luster Leaf Products Inc",
      544: "Manus Machina BV",
      545: "Mobiquity Networks Inc",
      546: "Praxis Dynamics",
      547: "Philip Morris Products S.A.",
      548: "Comarch SA",
      549: "Nestl Nespresso S.A.",
      550: "Merlinia A/S",
      551: "LifeBEAM Technologies",
      552: "Twocanoes Labs, LLC",
      553: "Muoverti Limited",
      554: "Stamer Musikanlagen GMBH",
      555: "Tesla Motors",
      556: "Pharynks Corporation",
      557: "Lupine",
      558: "Siemens AG",
      559: "Huami (Shanghai) Culture Communication CO., LTD",
      560: "Foster Electric Company, Ltd",
      561: "ETA SA",
      562: "x-Senso Solutions Kft",
      563: "Shenzhen SuLong Communication Ltd",
      564: "FengFan (BeiJing) Technology Co, Ltd",
      565: "Qrio Inc",
      566: "Pitpatpet Ltd",
      567: "MSHeli s.r.l.",
      568: "Trakm8 Ltd",
      569: "JIN CO, Ltd",
      570: "Alatech Tehnology",
      571: "Beijing CarePulse Electronic Technology Co, Ltd",
      572: "Awarepoint",
      573: "ViCentra B.V.",
      574: "Raven Industries",
      575: "WaveWare Technologies Inc.",
      576: "Argenox Technologies",
      577: "Bragi GmbH",
      578: "16Lab Inc",
      579: "Masimo Corp",
      580: "Iotera Inc",
      581: "Endress+Hauser",
      582: "ACKme Networks, Inc.",
      583: "FiftyThree Inc.",
      584: "Parker Hannifin Corp",
      585: "Transcranial Ltd",
      586: "Uwatec AG",
      587: "Orlan LLC",
      588: "Blue Clover Devices",
      589: "M-Way Solutions GmbH",
      590: "Microtronics Engineering GmbH",
      591: "Schneider Schreibgerte GmbH",
      592: "Sapphire Circuits LLC",
      593: "Lumo Bodytech Inc.",
      594: "UKC Technosolution",
      595: "Xicato Inc.",
      596: "Playbrush",
      597: "Dai Nippon Printing Co., Ltd.",
      598: "G24 Power Limited",
      599: "AdBabble Local Commerce Inc.",
      600: "Devialet SA",
      601: "ALTYOR",
      602: "University of Applied Sciences Valais/Haute Ecole Valaisanne",
      603: "Five Interactive, LLC dba Zendo",
      604: "NetEaseHangzhouNetwork co.Ltd.",
      605: "Lexmark International Inc.",
      606: "Fluke Corporation",
      607: "Yardarm Technologies",
      608: "SensaRx",
      609: "SECVRE GmbH",
      610: "Glacial Ridge Technologies",
      611: "Identiv, Inc.",
      612: "DDS, Inc.",
      613: "SMK Corporation",
      614: "Schawbel Technologies LLC",
      615: "XMI Systems SA",
      616: "Cerevo",
      617: "Torrox GmbH & Co KG",
      618: "Gemalto",
      619: "DEKA Research & Development Corp.",
      620: "Domster Tadeusz Szydlowski",
      621: "Technogym SPA",
      622: "FLEURBAEY BVBA",
      623: "Aptcode Solutions",
      624: "LSI ADL Technology",
      625: "Animas Corp",
      626: "Alps Electric Co., Ltd.",
      627: "OCEASOFT",
      628: "Motsai Research",
      629: "Geotab",
      630: "E.G.O. Elektro-Gertebau GmbH",
      631: "bewhere inc",
      632: "Johnson Outdoors Inc",
      633: "steute Schaltgerate GmbH & Co. KG",
      634: "Ekomini inc.",
      635: "DEFA AS",
      636: "Aseptika Ltd",
      637: "HUAWEI Technologies Co., Ltd. ( )",
      638: "HabitAware, LLC",
      639: "ruwido austria gmbh",
      640: "ITEC corporation",
      641: "StoneL",
      642: "Sonova AG",
      643: "Maven Machines, Inc.",
      644: "Synapse Electronics",
      645: "Standard Innovation Inc.",
      646: "RF Code, Inc.",
      647: "Wally Ventures S.L.",
      648: "Willowbank Electronics Ltd",
      649: "SK Telecom",
      650: "Jetro AS",
      651: "Code Gears LTD",
      652: "NANOLINK APS",
      653: "IF, LLC",
      654: "RF Digital Corp",
      655: "Church & Dwight Co., Inc",
      656: "Multibit Oy",
      657: "CliniCloud Inc",
      658: "SwiftSensors",
      659: "Blue Bite",
      660: "ELIAS GmbH",
      661: "Sivantos GmbH",
      662: "Petzl",
      663: "storm power ltd",
      664: "EISST Ltd",
      665: "Inexess Technology Simma KG",
      666: "Currant, Inc.",
      667: "C2 Development, Inc.",
      668: "Blue Sky Scientific, LLC",
      669: "ALOTTAZS LABS, LLC",
      670: "Kupson spol. s r.o.",
      671: "Areus Engineering GmbH",
      672: "Impossible Camera GmbH",
      673: "InventureTrack Systems",
      674: "LockedUp",
      675: "Itude",
      676: "Pacific Lock Company",
      677: "Tendyron Corporation ( )",
      678: "Robert Bosch GmbH",
      679: "Illuxtron international B.V.",
      680: "miSport Ltd.",
      681: "Chargelib",
      682: "Doppler Lab",
      683: "BBPOS Limited",
      684: "RTB Elektronik GmbH & Co. KG",
      685: "Rx Networks, Inc.",
      686: "WeatherFlow, Inc.",
      687: "Technicolor USA Inc.",
      688: "Bestechnic(Shanghai),Ltd",
      689: "Raden Inc",
      690: "JouZen Oy",
      691: "CLABER S.P.A.",
      692: "Hyginex, Inc.",
      693: "HANSHIN ELECTRIC RAILWAY CO.,LTD.",
      694: "Schneider Electric",
      695: "Oort Technologies LLC",
      696: "Chrono Therapeutics",
      697: "Rinnai Corporation",
      698: "Swissprime Technologies AG",
      699: "Koha.,Co.Ltd",
      700: "Genevac Ltd",
      701: "Chemtronics",
      702: "Seguro Technology Sp. z o.o.",
      703: "Redbird Flight Simulations",
      704: "Dash Robotics",
      705: "LINE Corporation",
      706: "Guillemot Corporation",
      707: "Techtronic Power Tools Technology Limited",
      708: "Wilson Sporting Goods",
      709: "Lenovo (Singapore) Pte Ltd. ( )",
      710: "Ayatan Sensors",
      711: "Electronics Tomorrow Limited",
      712: "VASCO Data Security International, Inc.",
      713: "PayRange Inc.",
      714: "ABOV Semiconductor",
      715: "AINA-Wireless Inc.",
      716: "Eijkelkamp Soil & Water",
      717: "BMA ergonomics b.v.",
      718: "Teva Branded Pharmaceutical Products R&D, Inc.",
      719: "Anima",
      720: "3M",
      721: "Empatica Srl",
      722: "Afero, Inc.",
      723: "Powercast Corporation",
      724: "Secuyou ApS",
      725: "OMRON Corporation",
      726: "Send Solutions",
      727: "NIPPON SYSTEMWARE CO.,LTD.",
      728: "Neosfar",
      729: "Fliegl Agrartechnik GmbH",
      730: "Gilvader",
      731: "Digi International Inc (R)",
      732: "DeWalch Technologies, Inc.",
      733: "Flint Rehabilitation Devices, LLC",
      734: "Samsung SDS Co., Ltd.",
      735: "Blur Product Development",
      736: "University of Michigan",
      737: "Victron Energy BV",
      738: "NTT docomo",
      739: "Carmanah Technologies Corp.",
      740: "Bytestorm Ltd.",
      741: "Espressif Incorporated ( () )",
      742: "Unwire",
      743: "Connected Yard, Inc.",
      744: "American Music Environments",
      745: "Sensogram Technologies, Inc.",
      746: "Fujitsu Limited",
      747: "Ardic Technology",
      748: "Delta Systems, Inc",
      749: "HTC Corporation",
      750: "Citizen Holdings Co., Ltd.",
      751: "SMART-INNOVATION.inc",
      752: "Blackrat Software",
      753: "The Idea Cave, LLC",
      754: "GoPro, Inc.",
      755: "AuthAir, Inc",
      756: "Vensi, Inc.",
      757: "Indagem Tech LLC",
      758: "Intemo Technologies",
      759: "DreamVisions co., Ltd.",
      760: "Runteq Oy Ltd",
      761: "IMAGINATION TECHNOLOGIES LTD",
      762: "CoSTAR TEchnologies",
      763: "Clarius Mobile Health Corp.",
      764: "Shanghai Frequen Microelectronics Co., Ltd.",
      765: "Uwanna, Inc.",
      766: "Lierda Science & Technology Group Co., Ltd.",
      767: "Silicon Laboratories",
      768: "World Moto Inc.",
      769: "Giatec Scientific Inc.",
      770: "Loop Devices, Inc",
      771: "IACA electronique",
      772: "Martians Inc",
      773: "Swipp ApS",
      774: "Life Laboratory Inc.",
      775: "FUJI INDUSTRIAL CO.,LTD.",
      776: "Surefire, LLC",
      777: "Dolby Labs",
      778: "Ellisys",
      779: "Magnitude Lighting Converters",
      780: "Hilti AG",
      781: "Devdata S.r.l.",
      782: "Deviceworx",
      783: "Shortcut Labs",
      784: "SGL Italia S.r.l.",
      785: "PEEQ DATA",
      786: "Ducere Technologies Pvt Ltd",
      787: "DiveNav, Inc.",
      788: "RIIG AI Sp. z o.o.",
      789: "Thermo Fisher Scientific",
      790: "AG Measurematics Pvt. Ltd.",
      791: "CHUO Electronics CO., LTD.",
      792: "Aspenta International",
      793: "Eugster Frismag AG",
      794: "Amber wireless GmbH",
      795: "HQ Inc",
      796: "Lab Sensor Solutions",
      797: "Enterlab ApS",
      798: "Eyefi, Inc.",
      799: "MetaSystem S.p.A.",
      800: "SONO ELECTRONICS. CO., LTD",
      801: "Jewelbots",
      802: "Compumedics Limited",
      803: "Rotor Bike Components",
      804: "Astro, Inc.",
      805: "Amotus Solutions",
      806: "Healthwear Technologies (Changzhou)Ltd",
      807: "Essex Electronics",
      808: "Grundfos A/S",
      809: "Eargo, Inc.",
      810: "Electronic Design Lab",
      811: "ESYLUX",
      812: "NIPPON SMT.CO.,Ltd",
      813: "BM innovations GmbH",
      814: "indoormap",
      815: "OttoQ Inc",
      816: "North Pole Engineering",
      817: "3flares Technologies Inc.",
      818: "Electrocompaniet A.S.",
      819: "Mul-T-Lock",
      820: "Corentium AS",
      821: "Enlighted Inc",
      822: "GISTIC",
      823: "AJP2 Holdings, LLC",
      824: "COBI GmbH",
      825: "Blue Sky Scientific, LLC",
      826: "Appception, Inc.",
      827: "Courtney Thorne Limited",
      828: "Virtuosys",
      829: "TPV Technology Limited",
      830: "Monitra SA",
      831: "Automation Components, Inc.",
      832: "Letsense s.r.l.",
      833: "Etesian Technologies LLC",
      834: "GERTEC BRASIL LTDA.",
      835: "Drekker Development Pty. Ltd.",
      836: "Whirl Inc",
      837: "Locus Positioning",
      838: "Acuity Brands Lighting, Inc",
      839: "Prevent Biometrics",
      840: "Arioneo",
      841: "VersaMe",
      842: "Vaddio",
      843: "Libratone A/S",
      844: "HM Electronics, Inc.",
      845: "TASER International, Inc.",
      846: "SafeTrust Inc.",
      847: "Heartland Payment Systems",
      848: "Bitstrata Systems Inc.",
      849: "Pieps GmbH",
      850: "iRiding(Xiamen)Technology Co.,Ltd.",
      851: "Alpha Audiotronics, Inc.",
      852: "TOPPAN FORMS CO.,LTD.",
      853: "Sigma Designs, Inc.",
      854: "Spectrum Brands, Inc.",
      855: "Polymap Wireless",
      856: "MagniWare Ltd.",
      857: "Novotec Medical GmbH",
      858: "Medicom Innovation Partner a/s",
      859: "Matrix Inc.",
      860: "Eaton Corporation",
      861: "KYS",
      862: "Naya Health, Inc.",
      863: "Acromag",
      864: "Insulet Corporation",
      865: "Wellinks Inc.",
      866: "ON Semiconductor",
      867: "FREELAP SA",
      868: "Favero Electronics Srl",
      869: "BioMech Sensor LLC",
      870: "BOLTT Sports technologies Private limited",
      871: "Saphe International",
      872: "Metormote AB",
      873: "littleBits",
      874: "SetPoint Medical",
      875: "BRControls Products BV",
      876: "Zipcar",
      877: "AirBolt Pty Ltd",
      878: "KeepTruckin Inc",
      879: "Motiv, Inc.",
      880: "Wazombi Labs O",
      881: "ORBCOMM",
      882: "Nixie Labs, Inc.",
      883: "AppNearMe Ltd",
      884: "Holman Industries",
      885: "Expain AS",
      886: "Electronic Temperature Instruments Ltd",
      887: "Plejd AB",
      888: "Propeller Health",
      889: "Shenzhen iMCO Electronic Technology Co.,Ltd",
      890: "Algoria",
      891: "Apption Labs Inc.",
      892: "Cronologics Corporation",
      893: "MICRODIA Ltd.",
      894: "lulabytes S.L.",
      895: "Nestec S.A.",
      896: "LLC MEGA - F service",
      897: "Sharp Corporation",
      898: "Precision Outcomes Ltd",
      899: "Kronos Incorporated",
      900: "OCOSMOS Co., Ltd.",
      901: "Embedded Electronic Solutions Ltd. dba e2Solutions",
      902: "Aterica Inc.",
      903: "BluStor PMC, Inc.",
      904: "Kapsch TrafficCom AB",
      905: "ActiveBlu Corporation",
      906: "Kohler Mira Limited",
      907: "Noke",
      908: "Appion Inc.",
      909: "Resmed Ltd",
      910: "Crownstone B.V.",
      911: "Xiaomi Inc.",
      912: "INFOTECH s.r.o.",
      913: "Thingsquare AB",
      914: "T&D",
      915: "LAVAZZA S.p.A.",
      916: "Netclearance Systems, Inc.",
      917: "SDATAWAY",
      918: "BLOKS GmbH",
      919: "LEGO System A/S",
      920: "Thetatronics Ltd",
      921: "Nikon Corporation",
      922: "NeST",
      923: "South Silicon Valley Microelectronics",
      924: "ALE International",
      925: "CareView Communications, Inc.",
      926: "SchoolBoard Limited",
      927: "Molex Corporation",
      928: "IVT Wireless Limited",
      929: "Alpine Labs LLC",
      930: "Candura Instruments",
      931: "SmartMovt Technology Co., Ltd",
      932: "Token Zero Ltd",
      933: "ACE CAD Enterprise Co., Ltd. (ACECAD)",
      934: "Medela, Inc",
      935: "AeroScout",
      936: "Esrille Inc.",
      937: "THINKERLY SRL",
      938: "Exon Sp. z o.o.",
      939: "Meizu Technology Co., Ltd.",
      940: "Smablo LTD",
      941: "XiQ",
      942: "Allswell Inc.",
      943: "Comm-N-Sense Corp DBA Verigo",
      944: "VIBRADORM GmbH",
      945: "Otodata Wireless Network Inc.",
      946: "Propagation Systems Limited",
      947: "Midwest Instruments & Controls",
      948: "Alpha Nodus, inc.",
      949: "petPOMM, Inc",
      950: "Mattel",
      951: "Airbly Inc.",
      952: "A-Safe Limited",
      953: "FREDERIQUE CONSTANT SA",
      954: "Maxscend Microelectronics Company Limited",
      955: "Abbott Diabetes Care",
      956: "ASB Bank Ltd",
      957: "amadas",
      958: "Applied Science, Inc.",
      959: "iLumi Solutions Inc.",
      960: "Arch Systems Inc.",
      961: "Ember Technologies, Inc.",
      962: "Snapchat Inc",
      963: "Casambi Technologies Oy",
      964: "Pico Technology Inc.",
      965: "St. Jude Medical, Inc.",
      966: "Intricon",
      967: "Structural Health Systems, Inc.",
      968: "Avvel International",
      969: "Gallagher Group",
      970: "In2things Automation Pvt. Ltd.",
      971: "SYSDEV Srl",
      972: "Vonkil Technologies Ltd",
      973: "Wynd Technologies, Inc.",
      974: "CONTRINEX S.A.",
      975: "MIRA, Inc.",
      976: "Watteam Ltd",
      977: "Density Inc.",
      978: "IOT Pot India Private Limited",
      979: "Sigma Connectivity AB",
      980: "PEG PEREGO SPA",
      981: "Wyzelink Systems Inc.",
      982: "Yota Devices LTD",
      983: "FINSECUR",
      984: "Zen-Me Labs Ltd",
      985: "3IWare Co., Ltd.",
      986: "EnOcean GmbH",
      987: "Instabeat, Inc",
      988: "Nima Labs",
      989: "Andreas Stihl AG & Co. KG",
      990: "Nathan Rhoades LLC",
      991: "Grob Technologies, LLC",
      992: "Actions (Zhuhai) Technology Co., Limited",
      993: "SPD Development Company Ltd",
      994: "Sensoan Oy",
      995: "Qualcomm Life Inc",
      996: "Chip-ing AG",
      997: "ffly4u",
      998: "IoT Instruments Oy",
      999: "TRUE Fitness Technology",
      1e3: "Reiner Kartengeraete GmbH & Co. KG.",
      1001: "SHENZHEN LEMONJOY TECHNOLOGY CO., LTD.",
      1002: "Hello Inc.",
      1003: "Evollve Inc.",
      1004: "Jigowatts Inc.",
      1005: "BASIC MICRO.COM,INC.",
      1006: "CUBE TECHNOLOGIES",
      1007: "foolography GmbH",
      1008: "CLINK",
      1009: "Hestan Smart Cooking Inc.",
      1010: "WindowMaster A/S",
      1011: "Flowscape AB",
      1012: "PAL Technologies Ltd",
      1013: "WHERE, Inc.",
      1014: "Iton Technology Corp.",
      1015: "Owl Labs Inc.",
      1016: "Rockford Corp.",
      1017: "Becon Technologies Co.,Ltd.",
      1018: "Vyassoft Technologies Inc",
      1019: "Nox Medical",
      1020: "Kimberly-Clark",
      1021: "Trimble Navigation Ltd.",
      1022: "Littelfuse",
      1023: "Withings",
      1024: "i-developer IT Beratung UG",
      1026: "Sears Holdings Corporation",
      1027: "Gantner Electronic GmbH",
      1028: "Authomate Inc",
      1029: "Vertex International, Inc.",
      1030: "Airtago",
      1031: "Swiss Audio SA",
      1032: "ToGetHome Inc.",
      1033: "AXIS",
      1034: "Openmatics",
      1035: "Jana Care Inc.",
      1036: "Senix Corporation",
      1037: "NorthStar Battery Company, LLC",
      1038: "SKF (U.K.) Limited",
      1039: "CO-AX Technology, Inc.",
      1040: "Fender Musical Instruments",
      1041: "Luidia Inc",
      1042: "SEFAM",
      1043: "Wireless Cables Inc",
      1044: "Lightning Protection International Pty Ltd",
      1045: "Uber Technologies Inc",
      1046: "SODA GmbH",
      1047: "Fatigue Science",
      1048: "Alpine Electronics Inc.",
      1049: "Novalogy LTD",
      1050: "Friday Labs Limited",
      1051: "OrthoAccel Technologies",
      1052: "WaterGuru, Inc.",
      1053: "Benning Elektrotechnik und Elektronik GmbH & Co. KG",
      1054: "Dell Computer Corporation",
      1055: "Kopin Corporation",
      1056: "TecBakery GmbH",
      1057: "Backbone Labs, Inc.",
      1058: "DELSEY SA",
      1059: "Chargifi Limited",
      1060: "Trainesense Ltd.",
      1061: "Unify Software and Solutions GmbH & Co. KG",
      1062: "Husqvarna AB",
      1063: "Focus fleet and fuel management inc",
      1064: "SmallLoop, LLC",
      1065: "Prolon Inc.",
      1066: "BD Medical",
      1067: "iMicroMed Incorporated",
      1068: "Ticto N.V.",
      1069: "Meshtech AS",
      1070: "MemCachier Inc.",
      1071: "Danfoss A/S",
      1072: "SnapStyk Inc.",
      1073: "Amyway Corporation",
      1074: "Silk Labs, Inc.",
      1075: "Pillsy Inc.",
      1076: "Hatch Baby, Inc.",
      1077: "Blocks Wearables Ltd.",
      1078: "Drayson Technologies (Europe) Limited",
      1079: "eBest IOT Inc.",
      1080: "Helvar Ltd",
      1081: "Radiance Technologies",
      1082: "Nuheara Limited",
      1083: "Appside co., ltd.",
      1084: "DeLaval",
      1085: "Coiler Corporation",
      1086: "Thermomedics, Inc.",
      1087: "Tentacle Sync GmbH",
      1088: "Valencell, Inc.",
      1089: "iProtoXi Oy",
      1090: "SECOM CO., LTD.",
      1091: "Tucker International LLC",
      1092: "Metanate Limited",
      1093: "Kobian Canada Inc.",
      1094: "NETGEAR, Inc.",
      1095: "Fabtronics Australia Pty Ltd",
      1096: "Grand Centrix GmbH",
      1097: "1UP USA.com llc",
      1098: "SHIMANO INC.",
      1099: "Nain Inc.",
      1100: "LifeStyle Lock, LLC",
      1101: "VEGA Grieshaber KG",
      1102: "Xtrava Inc.",
      1103: "TTS Tooltechnic Systems AG & Co. KG",
      1104: "Teenage Engineering AB",
      1105: "Tunstall Nordic AB",
      1106: "Svep Design Center AB",
      1107: "GreenPeak Technologies BV",
      1108: "Sphinx Electronics GmbH & Co KG",
      1109: "Atomation",
      1110: "Nemik Consulting Inc",
      1111: "RF INNOVATION",
      1112: "Mini Solution Co., Ltd.",
      1113: "Lumenetix, Inc",
      1114: "2048450 Ontario Inc",
      1115: "SPACEEK LTD",
      1116: "Delta T Corporation",
      1117: "Boston Scientific Corporation",
      1118: "Nuviz, Inc.",
      1119: "Real Time Automation, Inc.",
      1120: "Kolibree",
      1121: "vhf elektronik GmbH",
      1122: "Bonsai Systems GmbH",
      1123: "Fathom Systems Inc.",
      1124: "Bellman & Symfon",
      1125: "International Forte Group LLC",
      1126: "CycleLabs Solutions inc.",
      1127: "Codenex Oy",
      1128: "Kynesim Ltd",
      1129: "Palago AB",
      1130: "INSIGMA INC.",
      1131: "PMD Solutions",
      1132: "Qingdao Realtime Technology Co., Ltd.",
      1133: "BEGA Gantenbrink-Leuchten KG",
      1134: "Pambor Ltd.",
      65535: "SPECIAL USE/DEFAULT"
    };
  }
});

// node_modules/systeminformation/lib/bluetooth.js
var require_bluetooth = __commonJS({
  "node_modules/systeminformation/lib/bluetooth.js"(exports2) {
    "use strict";
    var exec = require("child_process").exec;
    var execSync = require("child_process").execSync;
    var path2 = require("path");
    var util = require_util();
    var bluetoothVendors = require_bluetoothVendors();
    var fs2 = require("fs");
    var _platform = process.platform;
    var _linux = _platform === "linux" || _platform === "android";
    var _darwin = _platform === "darwin";
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _sunos = _platform === "sunos";
    function parseBluetoothType(str) {
      let result2 = "";
      if (str.indexOf("keyboard") >= 0) {
        result2 = "Keyboard";
      }
      if (str.indexOf("mouse") >= 0) {
        result2 = "Mouse";
      }
      if (str.indexOf("trackpad") >= 0) {
        result2 = "Trackpad";
      }
      if (str.indexOf("speaker") >= 0) {
        result2 = "Speaker";
      }
      if (str.indexOf("headset") >= 0) {
        result2 = "Headset";
      }
      if (str.indexOf("phone") >= 0) {
        result2 = "Phone";
      }
      if (str.indexOf("macbook") >= 0) {
        result2 = "Computer";
      }
      if (str.indexOf("imac") >= 0) {
        result2 = "Computer";
      }
      if (str.indexOf("ipad") >= 0) {
        result2 = "Tablet";
      }
      if (str.indexOf("watch") >= 0) {
        result2 = "Watch";
      }
      if (str.indexOf("headphone") >= 0) {
        result2 = "Headset";
      }
      return result2;
    }
    function parseBluetoothManufacturer(str) {
      let result2 = str.split(" ")[0];
      str = str.toLowerCase();
      if (str.indexOf("apple") >= 0) {
        result2 = "Apple";
      }
      if (str.indexOf("ipad") >= 0) {
        result2 = "Apple";
      }
      if (str.indexOf("imac") >= 0) {
        result2 = "Apple";
      }
      if (str.indexOf("iphone") >= 0) {
        result2 = "Apple";
      }
      if (str.indexOf("magic mouse") >= 0) {
        result2 = "Apple";
      }
      if (str.indexOf("magic track") >= 0) {
        result2 = "Apple";
      }
      if (str.indexOf("macbook") >= 0) {
        result2 = "Apple";
      }
      return result2;
    }
    function parseBluetoothVendor(str) {
      const id = parseInt(str);
      if (!isNaN(id)) return bluetoothVendors[id];
    }
    function parseLinuxBluetoothInfo(lines, macAddr1, macAddr2) {
      const result2 = {};
      result2.device = null;
      result2.name = util.getValue(lines, "name", "=");
      result2.manufacturer = null;
      result2.macDevice = macAddr1;
      result2.macHost = macAddr2;
      result2.batteryPercent = null;
      result2.type = parseBluetoothType(result2.name.toLowerCase());
      result2.connected = false;
      return result2;
    }
    function parseDarwinBluetoothDevices(bluetoothObject, macAddr2) {
      const result2 = {};
      const typeStr = ((bluetoothObject.device_minorClassOfDevice_string || bluetoothObject.device_majorClassOfDevice_string || bluetoothObject.device_minorType || "") + (bluetoothObject.device_name || "")).toLowerCase();
      result2.device = bluetoothObject.device_services || "";
      result2.name = bluetoothObject.device_name || "";
      result2.manufacturer = bluetoothObject.device_manufacturer || parseBluetoothVendor(bluetoothObject.device_vendorID) || parseBluetoothManufacturer(bluetoothObject.device_name || "") || "";
      result2.macDevice = (bluetoothObject.device_addr || bluetoothObject.device_address || "").toLowerCase().replace(/-/g, ":");
      result2.macHost = macAddr2;
      result2.batteryPercent = bluetoothObject.device_batteryPercent || null;
      result2.type = parseBluetoothType(typeStr);
      result2.connected = bluetoothObject.device_isconnected === "attrib_Yes" || false;
      return result2;
    }
    function parseWindowsBluetooth(lines) {
      const result2 = {};
      result2.device = null;
      result2.name = util.getValue(lines, "name", ":");
      result2.manufacturer = util.getValue(lines, "manufacturer", ":");
      result2.macDevice = null;
      result2.macHost = null;
      result2.batteryPercent = null;
      result2.type = parseBluetoothType(result2.name.toLowerCase());
      result2.connected = null;
      return result2;
    }
    function bluetoothDevices(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let result2 = [];
          if (_linux) {
            const btFiles = util.getFilesInPath("/var/lib/bluetooth/");
            btFiles.forEach((element) => {
              const filename = path2.basename(element);
              const pathParts = element.split("/");
              const macAddr1 = pathParts.length >= 6 ? pathParts[pathParts.length - 2] : null;
              const macAddr2 = pathParts.length >= 7 ? pathParts[pathParts.length - 3] : null;
              if (filename === "info") {
                const infoFile = fs2.readFileSync(element, { encoding: "utf8" }).split("\n");
                result2.push(parseLinuxBluetoothInfo(infoFile, macAddr1, macAddr2));
              }
            });
            try {
              const hdicon = execSync("hcitool con", util.execOptsLinux).toString().toLowerCase();
              for (let i = 0; i < result2.length; i++) {
                if (result2[i].macDevice && result2[i].macDevice.length > 10 && hdicon.indexOf(result2[i].macDevice.toLowerCase()) >= 0) {
                  result2[i].connected = true;
                }
              }
            } catch (e) {
              util.noop();
            }
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          }
          if (_darwin) {
            let cmd = "system_profiler SPBluetoothDataType -json";
            exec(cmd, function(error, stdout) {
              if (!error) {
                try {
                  const outObj = JSON.parse(stdout.toString());
                  if (outObj.SPBluetoothDataType && outObj.SPBluetoothDataType.length && outObj.SPBluetoothDataType[0] && outObj.SPBluetoothDataType[0]["device_title"] && outObj.SPBluetoothDataType[0]["device_title"].length) {
                    let macAddr2 = null;
                    if (outObj.SPBluetoothDataType[0]["local_device_title"] && outObj.SPBluetoothDataType[0].local_device_title.general_address) {
                      macAddr2 = outObj.SPBluetoothDataType[0].local_device_title.general_address.toLowerCase().replace(/-/g, ":");
                    }
                    outObj.SPBluetoothDataType[0]["device_title"].forEach((element) => {
                      const obj = element;
                      const objKey = Object.keys(obj);
                      if (objKey && objKey.length === 1) {
                        const innerObject = obj[objKey[0]];
                        innerObject.device_name = objKey[0];
                        const bluetoothDevice = parseDarwinBluetoothDevices(innerObject, macAddr2);
                        result2.push(bluetoothDevice);
                      }
                    });
                  }
                  if (outObj.SPBluetoothDataType && outObj.SPBluetoothDataType.length && outObj.SPBluetoothDataType[0] && outObj.SPBluetoothDataType[0]["device_connected"] && outObj.SPBluetoothDataType[0]["device_connected"].length) {
                    const macAddr2 = outObj.SPBluetoothDataType[0].controller_properties && outObj.SPBluetoothDataType[0].controller_properties.controller_address ? outObj.SPBluetoothDataType[0].controller_properties.controller_address.toLowerCase().replace(/-/g, ":") : null;
                    outObj.SPBluetoothDataType[0]["device_connected"].forEach((element) => {
                      const obj = element;
                      const objKey = Object.keys(obj);
                      if (objKey && objKey.length === 1) {
                        const innerObject = obj[objKey[0]];
                        innerObject.device_name = objKey[0];
                        innerObject.device_isconnected = "attrib_Yes";
                        const bluetoothDevice = parseDarwinBluetoothDevices(innerObject, macAddr2);
                        result2.push(bluetoothDevice);
                      }
                    });
                  }
                  if (outObj.SPBluetoothDataType && outObj.SPBluetoothDataType.length && outObj.SPBluetoothDataType[0] && outObj.SPBluetoothDataType[0]["device_not_connected"] && outObj.SPBluetoothDataType[0]["device_not_connected"].length) {
                    const macAddr2 = outObj.SPBluetoothDataType[0].controller_properties && outObj.SPBluetoothDataType[0].controller_properties.controller_address ? outObj.SPBluetoothDataType[0].controller_properties.controller_address.toLowerCase().replace(/-/g, ":") : null;
                    outObj.SPBluetoothDataType[0]["device_not_connected"].forEach((element) => {
                      const obj = element;
                      const objKey = Object.keys(obj);
                      if (objKey && objKey.length === 1) {
                        const innerObject = obj[objKey[0]];
                        innerObject.device_name = objKey[0];
                        innerObject.device_isconnected = "attrib_No";
                        const bluetoothDevice = parseDarwinBluetoothDevices(innerObject, macAddr2);
                        result2.push(bluetoothDevice);
                      }
                    });
                  }
                } catch (e) {
                  util.noop();
                }
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_windows) {
            util.powerShell("Get-CimInstance Win32_PNPEntity | select PNPClass, Name, Manufacturer | fl").then((stdout, error) => {
              if (!error) {
                const parts = stdout.toString().split(/\n\s*\n/);
                parts.forEach((part) => {
                  if (util.getValue(part.split("\n"), "PNPClass", ":") === "Bluetooth") {
                    result2.push(parseWindowsBluetooth(part.split("\n")));
                  }
                });
              }
              if (callback) {
                callback(result2);
              }
              resolve(result2);
            });
          }
          if (_freebsd || _netbsd || _openbsd || _sunos) {
            resolve(null);
          }
        });
      });
    }
    exports2.bluetoothDevices = bluetoothDevices;
  }
});

// node_modules/systeminformation/lib/index.js
var require_lib = __commonJS({
  "node_modules/systeminformation/lib/index.js"(exports2) {
    "use strict";
    var lib_version = require_package().version;
    var util = require_util();
    var system = require_system();
    var osInfo = require_osinfo();
    var cpu = require_cpu();
    var memory = require_memory();
    var battery = require_battery();
    var graphics = require_graphics();
    var filesystem = require_filesystem();
    var network = require_network();
    var wifi = require_wifi();
    var processes = require_processes();
    var users = require_users();
    var internet = require_internet();
    var docker = require_docker();
    var vbox = require_virtualbox();
    var printer = require_printer();
    var usb = require_usb();
    var audio = require_audio();
    var bluetooth = require_bluetooth();
    var _platform = process.platform;
    var _windows = _platform === "win32";
    var _freebsd = _platform === "freebsd";
    var _openbsd = _platform === "openbsd";
    var _netbsd = _platform === "netbsd";
    var _sunos = _platform === "sunos";
    if (_windows) {
      util.getCodepage();
      util.getPowershell();
    }
    function version() {
      return lib_version;
    }
    function getStaticData(callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let data = {};
          data.version = version();
          Promise.all([
            system.system(),
            system.bios(),
            system.baseboard(),
            system.chassis(),
            osInfo.osInfo(),
            osInfo.uuid(),
            osInfo.versions(),
            cpu.cpu(),
            cpu.cpuFlags(),
            graphics.graphics(),
            network.networkInterfaces(),
            memory.memLayout(),
            filesystem.diskLayout(),
            audio.audio(),
            bluetooth.bluetoothDevices(),
            usb.usb(),
            printer.printer()
          ]).then((res) => {
            data.system = res[0];
            data.bios = res[1];
            data.baseboard = res[2];
            data.chassis = res[3];
            data.os = res[4];
            data.uuid = res[5];
            data.versions = res[6];
            data.cpu = res[7];
            data.cpu.flags = res[8];
            data.graphics = res[9];
            data.net = res[10];
            data.memLayout = res[11];
            data.diskLayout = res[12];
            data.audio = res[13];
            data.bluetooth = res[14];
            data.usb = res[15];
            data.printer = res[16];
            if (callback) {
              callback(data);
            }
            resolve(data);
          });
        });
      });
    }
    function getDynamicData(srv, iface, callback) {
      if (util.isFunction(iface)) {
        callback = iface;
        iface = "";
      }
      if (util.isFunction(srv)) {
        callback = srv;
        srv = "";
      }
      return new Promise((resolve) => {
        process.nextTick(() => {
          iface = iface || network.getDefaultNetworkInterface();
          srv = srv || "";
          let functionProcessed = function() {
            let totalFunctions = 15;
            if (_windows) {
              totalFunctions = 13;
            }
            if (_freebsd || _openbsd || _netbsd) {
              totalFunctions = 11;
            }
            if (_sunos) {
              totalFunctions = 6;
            }
            return function() {
              if (--totalFunctions === 0) {
                if (callback) {
                  callback(data);
                }
                resolve(data);
              }
            };
          }();
          let data = {};
          data.time = osInfo.time();
          data.node = process.versions.node;
          data.v8 = process.versions.v8;
          cpu.cpuCurrentSpeed().then((res) => {
            data.cpuCurrentSpeed = res;
            functionProcessed();
          });
          users.users().then((res) => {
            data.users = res;
            functionProcessed();
          });
          processes.processes().then((res) => {
            data.processes = res;
            functionProcessed();
          });
          cpu.currentLoad().then((res) => {
            data.currentLoad = res;
            functionProcessed();
          });
          if (!_sunos) {
            cpu.cpuTemperature().then((res) => {
              data.temp = res;
              functionProcessed();
            });
          }
          if (!_openbsd && !_freebsd && !_netbsd && !_sunos) {
            network.networkStats(iface).then((res) => {
              data.networkStats = res;
              functionProcessed();
            });
          }
          if (!_sunos) {
            network.networkConnections().then((res) => {
              data.networkConnections = res;
              functionProcessed();
            });
          }
          memory.mem().then((res) => {
            data.mem = res;
            functionProcessed();
          });
          if (!_sunos) {
            battery().then((res) => {
              data.battery = res;
              functionProcessed();
            });
          }
          if (!_sunos) {
            processes.services(srv).then((res) => {
              data.services = res;
              functionProcessed();
            });
          }
          if (!_sunos) {
            filesystem.fsSize().then((res) => {
              data.fsSize = res;
              functionProcessed();
            });
          }
          if (!_windows && !_openbsd && !_freebsd && !_netbsd && !_sunos) {
            filesystem.fsStats().then((res) => {
              data.fsStats = res;
              functionProcessed();
            });
          }
          if (!_windows && !_openbsd && !_freebsd && !_netbsd && !_sunos) {
            filesystem.disksIO().then((res) => {
              data.disksIO = res;
              functionProcessed();
            });
          }
          if (!_openbsd && !_freebsd && !_netbsd && !_sunos) {
            wifi.wifiNetworks().then((res) => {
              data.wifiNetworks = res;
              functionProcessed();
            });
          }
          internet.inetLatency().then((res) => {
            data.inetLatency = res;
            functionProcessed();
          });
        });
      });
    }
    function getAllData(srv, iface, callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          let data = {};
          if (iface && util.isFunction(iface) && !callback) {
            callback = iface;
            iface = "";
          }
          if (srv && util.isFunction(srv) && !iface && !callback) {
            callback = srv;
            srv = "";
            iface = "";
          }
          getStaticData().then((res) => {
            data = res;
            getDynamicData(srv, iface).then((res2) => {
              for (let key in res2) {
                if ({}.hasOwnProperty.call(res2, key)) {
                  data[key] = res2[key];
                }
              }
              if (callback) {
                callback(data);
              }
              resolve(data);
            });
          });
        });
      });
    }
    function get(valueObject, callback) {
      return new Promise((resolve) => {
        process.nextTick(() => {
          const allPromises = Object.keys(valueObject).filter((func) => ({}).hasOwnProperty.call(exports2, func)).map((func) => {
            const params = valueObject[func].substring(valueObject[func].lastIndexOf("(") + 1, valueObject[func].lastIndexOf(")"));
            let funcWithoutParams = func.indexOf(")") >= 0 ? func.split(")")[1].trim() : func;
            funcWithoutParams = func.indexOf("|") >= 0 ? func.split("|")[0].trim() : funcWithoutParams;
            if (params) {
              return exports2[funcWithoutParams](params);
            } else {
              return exports2[funcWithoutParams]("");
            }
          });
          Promise.all(allPromises).then((data) => {
            const result2 = {};
            let i = 0;
            for (let key in valueObject) {
              if ({}.hasOwnProperty.call(valueObject, key) && {}.hasOwnProperty.call(exports2, key) && data.length > i) {
                if (valueObject[key] === "*" || valueObject[key] === "all") {
                  result2[key] = data[i];
                } else {
                  let keys = valueObject[key];
                  let filter = "";
                  let filterParts = [];
                  if (keys.indexOf(")") >= 0) {
                    keys = keys.split(")")[1].trim();
                  }
                  if (keys.indexOf("|") >= 0) {
                    filter = keys.split("|")[1].trim();
                    filterParts = filter.split(":");
                    keys = keys.split("|")[0].trim();
                  }
                  keys = keys.replace(/,/g, " ").replace(/ +/g, " ").split(" ");
                  if (data[i]) {
                    if (Array.isArray(data[i])) {
                      const partialArray = [];
                      data[i].forEach((element) => {
                        let partialRes = {};
                        if (keys.length === 1 && (keys[0] === "*" || keys[0] === "all")) {
                          partialRes = element;
                        } else {
                          keys.forEach((k) => {
                            if ({}.hasOwnProperty.call(element, k)) {
                              partialRes[k] = element[k];
                            }
                          });
                        }
                        if (filter && filterParts.length === 2) {
                          if ({}.hasOwnProperty.call(partialRes, filterParts[0].trim())) {
                            const val = partialRes[filterParts[0].trim()];
                            if (typeof val == "number") {
                              if (val === parseFloat(filterParts[1].trim())) {
                                partialArray.push(partialRes);
                              }
                            } else if (typeof val == "string") {
                              if (val.toLowerCase() === filterParts[1].trim().toLowerCase()) {
                                partialArray.push(partialRes);
                              }
                            }
                          }
                        } else {
                          partialArray.push(partialRes);
                        }
                      });
                      result2[key] = partialArray;
                    } else {
                      const partialRes = {};
                      keys.forEach((k) => {
                        if ({}.hasOwnProperty.call(data[i], k)) {
                          partialRes[k] = data[i][k];
                        }
                      });
                      result2[key] = partialRes;
                    }
                  } else {
                    result2[key] = {};
                  }
                }
                i++;
              }
            }
            if (callback) {
              callback(result2);
            }
            resolve(result2);
          });
        });
      });
    }
    function observe(valueObject, interval, callback) {
      let _data = null;
      const result2 = setInterval(() => {
        get(valueObject).then((data) => {
          if (JSON.stringify(_data) !== JSON.stringify(data)) {
            _data = Object.assign({}, data);
            callback(data);
          }
        });
      }, interval);
      return result2;
    }
    exports2.version = version;
    exports2.system = system.system;
    exports2.bios = system.bios;
    exports2.baseboard = system.baseboard;
    exports2.chassis = system.chassis;
    exports2.time = osInfo.time;
    exports2.osInfo = osInfo.osInfo;
    exports2.versions = osInfo.versions;
    exports2.shell = osInfo.shell;
    exports2.uuid = osInfo.uuid;
    exports2.cpu = cpu.cpu;
    exports2.cpuFlags = cpu.cpuFlags;
    exports2.cpuCache = cpu.cpuCache;
    exports2.cpuCurrentSpeed = cpu.cpuCurrentSpeed;
    exports2.cpuTemperature = cpu.cpuTemperature;
    exports2.currentLoad = cpu.currentLoad;
    exports2.fullLoad = cpu.fullLoad;
    exports2.mem = memory.mem;
    exports2.memLayout = memory.memLayout;
    exports2.battery = battery;
    exports2.graphics = graphics.graphics;
    exports2.fsSize = filesystem.fsSize;
    exports2.fsOpenFiles = filesystem.fsOpenFiles;
    exports2.blockDevices = filesystem.blockDevices;
    exports2.fsStats = filesystem.fsStats;
    exports2.disksIO = filesystem.disksIO;
    exports2.diskLayout = filesystem.diskLayout;
    exports2.networkInterfaceDefault = network.networkInterfaceDefault;
    exports2.networkGatewayDefault = network.networkGatewayDefault;
    exports2.networkInterfaces = network.networkInterfaces;
    exports2.networkStats = network.networkStats;
    exports2.networkConnections = network.networkConnections;
    exports2.wifiNetworks = wifi.wifiNetworks;
    exports2.wifiInterfaces = wifi.wifiInterfaces;
    exports2.wifiConnections = wifi.wifiConnections;
    exports2.services = processes.services;
    exports2.processes = processes.processes;
    exports2.processLoad = processes.processLoad;
    exports2.users = users.users;
    exports2.inetChecksite = internet.inetChecksite;
    exports2.inetLatency = internet.inetLatency;
    exports2.dockerInfo = docker.dockerInfo;
    exports2.dockerImages = docker.dockerImages;
    exports2.dockerContainers = docker.dockerContainers;
    exports2.dockerContainerStats = docker.dockerContainerStats;
    exports2.dockerContainerProcesses = docker.dockerContainerProcesses;
    exports2.dockerVolumes = docker.dockerVolumes;
    exports2.dockerAll = docker.dockerAll;
    exports2.vboxInfo = vbox.vboxInfo;
    exports2.printer = printer.printer;
    exports2.usb = usb.usb;
    exports2.audio = audio.audio;
    exports2.bluetoothDevices = bluetooth.bluetoothDevices;
    exports2.getStaticData = getStaticData;
    exports2.getDynamicData = getDynamicData;
    exports2.getAllData = getAllData;
    exports2.get = get;
    exports2.observe = observe;
    exports2.powerShellStart = util.powerShellStart;
    exports2.powerShellRelease = util.powerShellRelease;
  }
});

// server.js
var import_node_http = __toESM(require("node:http"), 1);
var import_node_fs = __toESM(require("node:fs"), 1);
var import_node_url = __toESM(require("node:url"), 1);
var import_node_path = __toESM(require("node:path"), 1);
var import_max_api = __toESM(require("max-api"), 1);

// node_modules/ws/wrapper.mjs
var import_stream = __toESM(require_stream(), 1);
var import_receiver = __toESM(require_receiver(), 1);
var import_sender = __toESM(require_sender(), 1);
var import_websocket = __toESM(require_websocket(), 1);
var import_websocket_server = __toESM(require_websocket_server(), 1);

// server.js
var import_portfinder = __toESM(require_portfinder(), 1);

// node_modules/@ircam/comote-helpers/src/wifi-infos.js
var import_systeminformation = __toESM(require_lib(), 1);
async function getWifiInfos() {
  const wifiConnections = await import_systeminformation.default.wifiConnections();
  const conn = wifiConnections[0];
  if (!conn) {
    return null;
  }
  const interfaces = await import_systeminformation.default.networkInterfaces();
  const int = interfaces.find((int2) => int2.iface === conn.iface);
  return {
    ssid: conn.ssid,
    ip: int.ip4
  };
}

// node_modules/@ircam/comote-helpers/src/network-infos.js
var import_systeminformation2 = __toESM(require_lib(), 1);
async function getNetworkInterfacesInfos({
  interfaceFilter = (i) => {
    return i.ip4 && i.ip4 !== "127.0.0.1" && i.ip4 !== "localhost";
  }
} = {}) {
  const interfaces = await import_systeminformation2.default.networkInterfaces();
  if (!interfaces) {
    return null;
  }
  if (typeof interfaceFilter !== "function") {
    return interfaces;
  }
  return interfaces.filter(interfaceFilter);
}

// server.js
var comoteConfig = {
  id: 0,
  interval: 16,
  // period in ms
  ws: null,
  osc: {
    port: 8001,
    hostname: "",
    autostart: true
  },
  webview: ""
};
var server = import_node_http.default.createServer((req, res) => {
  const parsedUrl = import_node_url.default.parse(req.url);
  let pathname = `./comote-connect-public${parsedUrl.pathname}`;
  const ext = import_node_path.default.parse(pathname).ext || ".html";
  const map = {
    ".ico": "image/x-icon",
    ".html": "text/html",
    ".js": "text/javascript",
    ".json": "application/json",
    ".css": "text/css"
  };
  if (import_node_fs.default.existsSync(pathname)) {
    if (import_node_fs.default.statSync(pathname).isDirectory()) {
      pathname += "index.html";
    }
    import_node_fs.default.readFile(pathname, (err, data) => {
      if (err) {
        res.statusCode = 500;
        res.end(`Error getting the file: ${err}.`);
      } else {
        res.setHeader("Content-type", map[ext] || "text/plain");
        res.end(data);
      }
    });
  } else {
    res.statusCode = 404;
    res.end(`File ${pathname} not found!`);
  }
});
console.log("server started");
var wss = new import_websocket_server.default({ server });
var sockets = /* @__PURE__ */ new Set();
wss.on("connection", async function connection(ws) {
  const wifiInfos = await getWifiInfos();
  const networkInterfacesInfos = await getNetworkInterfacesInfos();
  const networkInfos = networkInterfacesInfos.sort((a, b) => {
    if (a.default) {
      return -1;
    } else if (b.default) {
      return 1;
    } else {
      return a.ifaceName < b.ifaceName;
    }
  });
  ws.send(JSON.stringify({ type: "networkInfos", payload: networkInfos }));
  if (networkInfos && networkInfos[0]) {
    comoteConfig.osc.hostname = networkInfos[0].ip4;
  }
  ws.send(JSON.stringify({ type: "wifiInfos", payload: wifiInfos }));
  ws.send(JSON.stringify({ type: "comoteConfig", payload: comoteConfig }));
  sockets.add(ws);
  ws.on("message", async (data, isBinary) => {
    const message = isBinary || typeof data !== "string" ? data.toString() : data;
    const { type, payload } = JSON.parse(message);
    switch (type) {
      case "comoteConfig":
        Object.assign(comoteConfig, payload);
        ws.send(JSON.stringify({ type: "comoteConfig", payload: comoteConfig }));
        await import_max_api.default.outlet("id", comoteConfig.id);
        await import_max_api.default.outlet("interval", comoteConfig.interval);
        await import_max_api.default.outlet("osc_hostname", comoteConfig.osc.hostname);
        await import_max_api.default.outlet("osc_port", comoteConfig.osc.port);
        await import_max_api.default.outlet("osc_autostart", comoteConfig.osc.autostart);
        await import_max_api.default.outlet("webview_url", comoteConfig.webview);
        break;
      default:
        console.warn("received unknown message", { type, payload });
        break;
    }
  });
  ws.on("close", () => {
    sockets.delete(ws);
  });
});
var handlers = {
  id: (id) => {
    comoteConfig.id = id;
    sockets.forEach((ws) => {
      ws.send(JSON.stringify({ type: "comoteConfig", payload: comoteConfig }));
    });
    import_max_api.default.outlet("id", id);
  },
  interval: (interval) => {
    comoteConfig.interval = interval;
    sockets.forEach((ws) => {
      ws.send(JSON.stringify({ type: "comoteConfig", payload: comoteConfig }));
    });
    import_max_api.default.outlet("interval", interval);
  },
  osc_hostname: (hostname) => {
    comoteConfig.osc.hostname = hostname;
    sockets.forEach((ws) => {
      ws.send(JSON.stringify({ type: "comoteConfig", payload: comoteConfig }));
    });
    import_max_api.default.outlet("osc_hostname", hostname);
  },
  osc_port: (port) => {
    comoteConfig.osc.port = port;
    sockets.forEach((ws) => {
      ws.send(JSON.stringify({ type: "comoteConfig", payload: comoteConfig }));
    });
    import_max_api.default.outlet("osc_port", port);
  },
  osc_autostart: (autostart) => {
    comoteConfig.osc.autostart = !!autostart;
    sockets.forEach((ws) => {
      ws.send(JSON.stringify({ type: "comoteConfig", payload: comoteConfig }));
    });
    import_max_api.default.outlet("osc_autostart", autostart);
  },
  webview_url: (url2) => {
    comoteConfig.webview = url2;
    sockets.forEach((ws) => {
      ws.send(JSON.stringify({ type: "comoteConfig", payload: comoteConfig }));
    });
    import_max_api.default.outlet("webview_url", url2);
  },
  bang: async () => {
    await import_max_api.default.outlet("id", comoteConfig.id);
    await import_max_api.default.outlet("interval", comoteConfig.interval);
    await import_max_api.default.outlet("osc_hostname", comoteConfig.osc.hostname);
    await import_max_api.default.outlet("osc_port", comoteConfig.osc.port);
    await import_max_api.default.outlet("osc_autostart", comoteConfig.osc.autostart);
    await import_max_api.default.outlet("webview_url", comoteConfig.webview);
  }
};
import_max_api.default.addHandlers(handlers);
import_portfinder.default.basePort = 8888;
import_portfinder.default.getPort((err, port) => {
  server.listen(port, () => {
    const url2 = `http://127.0.0.1:${port}`;
    console.log(`server listening on ${url2}`);
    import_max_api.default.outlet("url", url2);
  });
});
