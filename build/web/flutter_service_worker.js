'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "8213c746c58c544f446c3d1e4e740127",
"assets/AssetManifest.bin.json": "30b9c100ddd4ad49df2b0f0524ad836f",
"assets/AssetManifest.json": "2975dcb53c1573d3c93f4fb1f2ac9889",
"assets/assets/background.png": "8df97517b6de213878a6148766412948",
"assets/assets/images/background%2520ori.jpg": "795f3f7f97d86a751b1336e1a4ca1842",
"assets/assets/images/background.JPG": "e2e452a5fbfecedca5aaecd3000a66b2",
"assets/assets/images/banner_balai.JPG": "6308f26de92a3d12f5cb1ed130300d05",
"assets/assets/images/bg%2520techno%25202.jpeg": "7ff2621911f978e0004f9f979740ef90",
"assets/assets/images/bg%2520techno.jpeg": "d6862a0de1992e24e8252716e34f1824",
"assets/assets/images/call-center.png": "1b4f345080c8830d8b9390ddd7222b64",
"assets/assets/images/culinary.png": "58ab54f16017bf8c21f6b9cc03e51962",
"assets/assets/images/email.png": "49b02990e2129cbc4e290159e8b628d8",
"assets/assets/images/female.png": "94ad24a7f567861d0f7ae0eb6a3004ae",
"assets/assets/images/gamelan.JPG": "51c2b0b42eb1d757820a70b07c1b00f0",
"assets/assets/images/gapura.JPG": "eab7bae9046fd78a5519b4135864f2ce",
"assets/assets/images/heha.png": "54be80b282e484616ba1039b7387c71a",
"assets/assets/images/homestay.png": "7584ea298a997eea9e00d949de3d4057",
"assets/assets/images/instagram.png": "4eebd574545845364aab884231c2fc54",
"assets/assets/images/kalurahan.png": "bcbf5d2b90170552acf125952c2d8704",
"assets/assets/images/logo_padem.png": "5906a8e3ddd151fe456c36891dd163ca",
"assets/assets/images/logo_padem_lq.png": "1e8c55f650be8df75129c19c64c5b01d",
"assets/assets/images/maintenance.png": "552e7822c25107623a320ed12b0b4a2f",
"assets/assets/images/male.png": "c2ef61f9dd3ab69af68933373a2b9295",
"assets/assets/images/pak%2520dukuh.jpg": "d0b0597119a1292b623cac39a60edb7a",
"assets/assets/images/pak%2520rt%25201.jpg": "134b2536e2cf8c38532acb641db80a84",
"assets/assets/images/pak%2520rt%25202.jpg": "64064423dd3a14c77a58a61dce7b3ef3",
"assets/assets/images/pak%2520rt%25203.jpg": "134b2536e2cf8c38532acb641db80a84",
"assets/assets/images/pak%2520rt%25204.jpg": "dc51c30e5d28f0b38f4a2fe3b507aeec",
"assets/assets/images/pak%2520rt%25205.jpg": "e58e572fff746763ace5aa0a1a470993",
"assets/assets/images/pak%2520rt%25206.jpg": "665ff9052ea7370fd76984eb484edb63",
"assets/assets/images/pak%2520rt%25207.jpg": "134b2536e2cf8c38532acb641db80a84",
"assets/assets/images/pak%2520rw.jpg": "134b2536e2cf8c38532acb641db80a84",
"assets/assets/images/pantaigesing.jpeg": "84a5ae0d7e042834cb7f8439bd41f53e",
"assets/assets/images/pasar_legi.JPG": "535c43e471e8705a7821a8c78d208b53",
"assets/assets/images/population.png": "cf8ce4b545d55f608787a7a736a3121c",
"assets/assets/images/product_image.png": "3c7e993b56d222e7e5ae7b447d29c2bf",
"assets/assets/images/retail_shop.png": "2daa77aff4478d3dc4f5ce79584213de",
"assets/assets/images/teraskaca.png": "097db8e7643a552de9992e384b411c48",
"assets/assets/images/tourist_guide.png": "4e8620f40170c15e60aa085bddfffc43",
"assets/assets/images/user.png": "e9ace2e2dac30ed544ae393f52a0a0e0",
"assets/FontManifest.json": "d3051bb543a1edfe77cc3e5172a85819",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "489e2b1c1404a20297fa1dc40f72380c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_AMS-Regular.ttf": "657a5353a553777e270827bd1630e467",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Caligraphic-Bold.ttf": "a9c8e437146ef63fcd6fae7cf65ca859",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Caligraphic-Regular.ttf": "7ec92adfa4fe03eb8e9bfb60813df1fa",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Fraktur-Bold.ttf": "46b41c4de7a936d099575185a94855c4",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Fraktur-Regular.ttf": "dede6f2c7dad4402fa205644391b3a94",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Main-Bold.ttf": "9eef86c1f9efa78ab93d41a0551948f7",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Main-BoldItalic.ttf": "e3c361ea8d1c215805439ce0941a1c8d",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Main-Italic.ttf": "ac3b1882325add4f148f05db8cafd401",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Main-Regular.ttf": "5a5766c715ee765aa1398997643f1589",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Math-BoldItalic.ttf": "946a26954ab7fbd7ea78df07795a6cbc",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Math-Italic.ttf": "a7732ecb5840a15be39e1eda377bc21d",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_SansSerif-Bold.ttf": "ad0a28f28f736cf4c121bcb0e719b88a",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_SansSerif-Italic.ttf": "d89b80e7bdd57d238eeaa80ed9a1013a",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_SansSerif-Regular.ttf": "b5f967ed9e4933f1c3165a12fe3436df",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Script-Regular.ttf": "55d2dcd4778875a53ff09320a85a5296",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Size1-Regular.ttf": "1e6a3368d660edc3a2fbbe72edfeaa85",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Size2-Regular.ttf": "959972785387fe35f7d47dbfb0385bc4",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Size3-Regular.ttf": "e87212c26bb86c21eb028aba2ac53ec3",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Size4-Regular.ttf": "85554307b465da7eb785fd3ce52ad282",
"assets/packages/flutter_math_fork/lib/katex_fonts/fonts/KaTeX_Typewriter-Regular.ttf": "87f56927f1ba726ce0591955c8b3b42d",
"assets/packages/material_symbols_icons/lib/fonts/MaterialSymbolsOutlined.ttf": "e57e0e5f096fcd7a039048e3ca7ee11b",
"assets/packages/material_symbols_icons/lib/fonts/MaterialSymbolsRounded.ttf": "d7e688bda5f6599c34efc90e17f37e9d",
"assets/packages/material_symbols_icons/lib/fonts/MaterialSymbolsSharp.ttf": "63735e76e5c58a5f282ef6d6332bcd6c",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "68329f8a0770a78f309d34cac7ac3b94",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "f83fd7d3c1a5c633cc07db00893888a8",
"icons/Icon-192.png": "98638e0145ede1f7064a3e4ca5dbbe00",
"icons/Icon-512.png": "2199751aa1d0ade1454a7960ebe57392",
"icons/Icon-maskable-192.png": "98638e0145ede1f7064a3e4ca5dbbe00",
"icons/Icon-maskable-512.png": "2199751aa1d0ade1454a7960ebe57392",
"index.html": "a8f5da4cccc3d67dbf814ed68a3d0730",
"/": "a8f5da4cccc3d67dbf814ed68a3d0730",
"main.dart.js": "bc0de90b6a5b2eb36cf1f02e2122b921",
"manifest.json": "72c605a5b08e92f867cdd7e85d981163",
"version.json": "2b672b68db029651404d5d580522f800"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
