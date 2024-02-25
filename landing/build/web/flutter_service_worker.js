'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "ca7a713e34ef1f8255e65cca4805ab24",
"assets/AssetManifest.bin.json": "3039c32a79aa4be44befbbbf4d12dad8",
"assets/AssetManifest.json": "7dd62cc7a7b589f8edc967b5d31b7a55",
"assets/assets/fonts/AllianceNo2-Black.ttf": "7ef9c2471b708b6f01fecc24918ea7b6",
"assets/assets/fonts/AllianceNo2-BlackItalic.ttf": "a0c827727602218fe802ef5be0024d2b",
"assets/assets/fonts/AllianceNo2-Bold.ttf": "fb92c9bef94b0f6c76a43fb21c50ac8d",
"assets/assets/fonts/AllianceNo2-BoldItalic.ttf": "b5fd02450286317b1064126ef2d75ce7",
"assets/assets/fonts/AllianceNo2-ExtraBold.ttf": "80deea318fceb5e0e2089ce7a3de5d91",
"assets/assets/fonts/AllianceNo2-ExtraBoldItalic.ttf": "ccfc27aa5a916da8e2e58b50e609472b",
"assets/assets/fonts/AllianceNo2-Light.ttf": "14f29d6acbe630de5e31ab9cae60963d",
"assets/assets/fonts/AllianceNo2-LightItalic.ttf": "d216bc12d8d671492cbdb8c324dde612",
"assets/assets/fonts/AllianceNo2-Medium.ttf": "4a18390f86f2ef9fafac5a9456cd9658",
"assets/assets/fonts/AllianceNo2-MediumItalic.ttf": "94cceffcc37d02d75cbbfc2906f80608",
"assets/assets/fonts/AllianceNo2-Regular.ttf": "9752a66efe6363f497173988c38007fe",
"assets/assets/fonts/AllianceNo2-RegularItalic.ttf": "1ec7b6dafb762bdf46b6d8d11f742b81",
"assets/assets/fonts/AllianceNo2-SemiBold.ttf": "88addd84cbc71fa9a1ee05f48535e174",
"assets/assets/fonts/AllianceNo2-SemiBoldItalic.ttf": "57f75beb9d42ebe715e8642e4946c6e2",
"assets/assets/images/app.png": "ae4a17bcde08ae34fdf50ca3b0de8b12",
"assets/assets/images/bg.png": "ff5b75d74996acdbb2d92cfd53b9c4f1",
"assets/assets/images/img1.png": "b1ff45f351c83ec141eddc3ffd830628",
"assets/assets/images/img2.png": "173f774d8fe1dc85cc920f572a545373",
"assets/assets/images/img3.png": "0cfdcd26bf5a393c0b338b40ed263085",
"assets/assets/images/logo.png": "a214bd79e19d12d5252452993f5a9ff1",
"assets/assets/images/logo2.png": "43b87f7f1e31cab2d7ab204080333819",
"assets/assets/images/profile_back.png": "bc8f62582df22a3590604672d3858503",
"assets/assets/images/splash.png": "d8539ec1a7f05fdb2065b0de2259b3b4",
"assets/assets/images/splash2.png": "acbca7929f5b1857d5a448de8797f145",
"assets/assets/svgs/ai_ico.svg": "2eab5623b3a16694a650e414cf636208",
"assets/assets/svgs/bell_ico.svg": "51a37b1f65dd35e4a1017856b7d4aab8",
"assets/assets/svgs/discover_ico.svg": "24fdae60a99546cae464afa3bddc63d2",
"assets/assets/svgs/home.svg": "c86e87ec0ba11ba8cb9d6a3463177499",
"assets/assets/svgs/layers.svg": "cedbb96b471e38a31e03cc9fb01b413b",
"assets/assets/svgs/level_1.svg": "341c7e54783208e3796702710a5d04ee",
"assets/assets/svgs/level_2.svg": "50b8fd22a0c8ae32b0016c1eaa1514b6",
"assets/assets/svgs/level_3.svg": "fbc3d2267ed1e9dc794e63bcac71a2e4",
"assets/assets/svgs/level_4.svg": "3294dc426e0dc33c59eb38bdef808a6d",
"assets/assets/svgs/level_5.svg": "99e5768fe79fc78d7e6d21d85bc1c5d4",
"assets/assets/svgs/level_6.svg": "0237402cc4cd969c7fe62c0c6c230062",
"assets/assets/svgs/level_7.svg": "a0f2d52c69400ea1e136ac92c1fc9762",
"assets/assets/svgs/level_8.svg": "7b95cb021d3e2e214dcef281d5f3a7df",
"assets/assets/svgs/level_9.svg": "40033498ac8249ea6e2cd425a96b1fce",
"assets/assets/svgs/logo.svg": "d3ae8744cf38a059a95b592c42bb1127",
"assets/assets/svgs/logo_with_name.svg": "717084615b73c9184934bf0f04efffca",
"assets/assets/svgs/play_ico.svg": "675844005341c22a121bd9bbb5a1ab57",
"assets/assets/svgs/profile_ico.svg": "e145eb27a52d9242bda95fb462e85f55",
"assets/FontManifest.json": "6b74439e69bfd8a878d8b2c6df116361",
"assets/fonts/MaterialIcons-Regular.otf": "bb820614c4d1d7d8eff53a054ba2b115",
"assets/NOTICES": "7961bd5b2e7c9923335bff5f8e2f42e9",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "ae322efb8b1d1416de56a93cc72426f9",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "59a12ab9d00ae8f8096fffc417b6e84f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "7c214a057116ece1e4e4662c1b99de9f",
"/": "7c214a057116ece1e4e4662c1b99de9f",
"main.dart.js": "29fcd6d2b7c09c154b0dece5d39c0fbb",
"manifest.json": "ba86fbd13a2cda7beea487c3d68b937d",
"splash/img/dark-1x.png": "a802dad98ab3b69714de20a62fc3cf2a",
"splash/img/dark-2x.png": "536d46ed85f17d2c0514c69d6e7cc5cd",
"splash/img/dark-3x.png": "00c04ad5c253c3a31c008ec1e374d843",
"splash/img/dark-4x.png": "7c4dcc7ab3ab838f237c225264c3b924",
"splash/img/light-1x.png": "a802dad98ab3b69714de20a62fc3cf2a",
"splash/img/light-2x.png": "536d46ed85f17d2c0514c69d6e7cc5cd",
"splash/img/light-3x.png": "00c04ad5c253c3a31c008ec1e374d843",
"splash/img/light-4x.png": "7c4dcc7ab3ab838f237c225264c3b924",
"version.json": "85c151ddf57e6e3d7929177dd1a665c5"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
