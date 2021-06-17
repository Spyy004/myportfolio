'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "a1e36f284c2b45d6deae405680174e05",
".git/config": "ad50662567fd10af10adb7a3f1222737",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ecbb0cb5ffb7d773cd5b2407b210cc3b",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "e4db8c12ee125a8a085907b757359ef0",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/update.sample": "517f14b9239689dff8bda3022ebd9004",
".git/index": "b875d063204d1c89f8af00e2cc52219d",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "3d12e0fb1e6fbfda16a2d10491c5ee0f",
".git/logs/refs/heads/master": "3d12e0fb1e6fbfda16a2d10491c5ee0f",
".git/logs/refs/remotes/origin/master": "50f4ed116cdbed86a37c6bc0e9251da2",
".git/objects/03/2383501bdc169036ab442570fec0bd93647901": "aed80b5fd2f8f05c4572008ccee5362e",
".git/objects/05/b09474d48ef59ad9a77a7abfcf682e091a8d84": "956dec880b5fb9d6fe8d3819b1f1a1d0",
".git/objects/0c/bc4a92ff9ff3e04e4244b532bd4ba51dc2197b": "b205913cea56e186a17aa8e63f719324",
".git/objects/0f/ee0fcf3b68b60204ec85402f6437ffd169f2c3": "44ac6d9d58373a8d4e295ab1bd365b52",
".git/objects/15/101ba3bf977abde9a2ef052f1e1a2426e56f1e": "845bd7fb3043cfbd1b8346cbabd9d930",
".git/objects/23/1590b7a766fb8cf47671aeca2970940f6a919e": "672726b327e3e72e3ac3f2adc07012a3",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/33/b173c76fef144694a9c797ac6090949bf96cca": "023f9aa84fd7c8abaf0b0214fc4079de",
".git/objects/3c/6f01be8e8bc5881493366f9dca97c606f83d62": "86711a4dbed85d62e928493e4f40aeb7",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/49/a8ad6514fabecd1a6bc2f2f21226025852237e": "b0d276c67eca8d884cc54fc3b6b697e0",
".git/objects/53/a294a5c0ec19088fc994327e25c60ec93a1a11": "4a03d1450b93011c977279b025a5dc38",
".git/objects/55/52ac37d5ac7b63131659c206c1efd676312258": "3816033ac02a35caf4e2b40eed69caab",
".git/objects/63/95ef3730c765fe8a76305b7888f25322835e44": "4ff33047ed9303a219b495d8a31dac11",
".git/objects/68/96e85ca91151d567695d475861658b2763974d": "c50ecf449883a25a8a76ecd1ab559851",
".git/objects/6c/f14d34835286928f0d0bb35ec59418a431abc9": "d2164fc887a1b6e9e0eed75990706622",
".git/objects/6e/2996b3e52111d2993a1eb2abec5228367f3dad": "6f0d0843e0818e267a3bc92b3b1cfbee",
".git/objects/77/57bac76bf96425cc6e6fb3f5f1d72b4b18748d": "59bcedb78390a096123636d9943b977e",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/83/cf8f4924af62b41c5ef12513d765e74f452d56": "8e3e0847774506b78334c5ea79e5b74e",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/89/4edb67cd49e431cbf00a6566aea7f8492de283": "882863423309cc7ac36de3e3454206af",
".git/objects/8f/8699711b77162b09fad4ed174858640b6596f7": "08da646bc6bc951acdc7fc1e5c9a5eb4",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a6/14e73d49a806ac3af4f6f1f4893863b1db0e28": "051d8f029c29eb0c7b8ee89e88032f01",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/a9/c2a64d29b5e4f1a1dbc5f3b07233ad5bb07a7d": "544886ab68812309ec68a5a820af9582",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/b5/cf0aee0e4e307ce297e8f18b7ae129241c30de": "600316d523082d0e66bac9727a7eaf56",
".git/objects/b6/a1e38f73aa81ba984fc7fe808364ae602a4f2b": "108502f6b755630841b025e81411bee9",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b8/7ca83cc054b80ced34ba1a662f607222cf1683": "ea5f0d3f18004f486da03065a6e272c8",
".git/objects/c3/b0366514bb5aaced6811155388057e1734f4ce": "4853e7be3375c03924e529f4815b9324",
".git/objects/c5/479ba5f515aaaa47f032719660414c9661bf17": "348317bdb697424392bd6bce4b99bb24",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e9/d064c0c9e34d1cc1da20bd731af46ee42aeeec": "38e728d09ffdde6bcf0ea89c9cea1df6",
".git/objects/fb/059523b51254b34e4a5b24b6cdbe0de88f6ba0": "87bb6ad3d737118ab28f1917be4c737e",
".git/refs/heads/master": "a0b18b41b315acb1977dc97a41bc5272",
".git/refs/remotes/origin/master": "a0b18b41b315acb1977dc97a41bc5272",
"assets/AssetManifest.json": "17e50be725ac4a069147616f4e0d71c7",
"assets/assets/devinceptLogo.png": "e5567a23c8eb2425d1260b778c845ab5",
"assets/assets/ecellLogo.png": "3449ed71884982700c6a6ef033f9e781",
"assets/assets/githubLogo.png": "539332cde023d1d114174ba85fa76157",
"assets/assets/gmailLogo.png": "65d5b9e651361b354d76f0ea464c1fb8",
"assets/assets/instaLogo.png": "ef3ff4c02c9f2401a6c80e9955fb2d52",
"assets/assets/LinkedinLogo.png": "1193c18b91421a5a82ddd2a925e5bff4",
"assets/assets/materials.mtl": "e1944846ca716de0fd0e90e55be6601e",
"assets/assets/model.obj": "117e9f557d0aef8e3474d9bb9e42960f",
"assets/assets/MyImage.png": "7179db5830ad33818c30c4943bf24d17",
"assets/assets/MyImage2.jpg": "602f20515e48f0eaddb372da5bbbb3c8",
"assets/assets/theindianwireLogo.png": "b0f63b3e3b2fdda58bd16dd1a0673c5f",
"assets/assets/twitterLogo.png": "96bb92be0fb2d97e7a12de181a6e0674",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/NOTICES": "e8c9b4d23ad8340bbaae0d9ce6d3cc3b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"githubLogo.png": "539332cde023d1d114174ba85fa76157",
"icons/faviconIcon.png": "28051d0b6fe590b6b5a277844fd04368",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"img/gmailLogo.png": "65d5b9e651361b354d76f0ea464c1fb8",
"index.html": "f022f43a3f56e8f678333eb0a1465ea9",
"/": "f022f43a3f56e8f678333eb0a1465ea9",
"main.dart.js": "31615b99897cb46c55c3c47806ac17da",
"manifest.json": "c0206743e288d2e417aba652023503f5",
"style.css": "f26534fcd0b5fa8fe98995b9914232bd",
"version.json": "9a4dddba415c9ee5265cd5f5d9963a6a"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
