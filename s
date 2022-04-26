[33mcommit e45aeb437214d5bfd48ea31189f1973058b03761[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m, [m[1;31morigine/main[m[33m, [m[1;32mDev[m[33m)[m
Author: Snehal Powar <SnehalP@Carproindia.com>
Date:   Fri Apr 22 19:59:14 2022 +0530

    TestCommit1

[33mcommit b1b85e7b13ba6031ecbe301885f47f8a9357b47f[m
Author: Snehal Powar <SnehalP@Carproindia.com>
Date:   Fri Apr 22 19:28:43 2022 +0530

    Test

[33mcommit fecc6992246a7f6f4fff56da88630a9ece42179c[m
Author: Antonio Sartori <antoniosartori@chromium.org>
Date:   Fri Apr 22 10:37:23 2022 +0200

    Remove callerRealm from HostEnsureCanCompileStrings
    
    See https://github.com/tc39/ecma262/pull/2670 and https://github.com/w3c/webappsec-csp/pull/541 for complementary PRs.

[33mcommit 37f7e8727678e411e2edd4449f867ff5b4a74279[m
Author: Domenic Denicola <d@domenic.me>
Date:   Fri Apr 22 03:20:33 2022 -0400

    Return on out-of-bounds dataTransfer.items.remove()
    
    Tests: https://github.com/web-platform-tests/wpt/pull/33737.
    
    Closes #2925.

[33mcommit 9377d865ee9ee28e4fda74f398fc9ce50140ebbc[m
Author: Domenic Denicola <d@domenic.me>
Date:   Thu Mar 31 12:38:11 2022 -0400

    Fix missing variable initialization for the event loop
    
    Closes #7766.

[33mcommit 39775c120bec548a826d6abd24e15c7abbd4aae2[m
Author: Domenic Denicola <d@domenic.me>
Date:   Thu Apr 21 13:00:15 2022 -0400

    Throw on showPicker() when the <input> is not mutable
    
    Closes #7767.
    
    This also includes an editorial refactoring to move more checks into the "show the picker, if applicable" algorithm, since either early-returning or throwing on certain conditions was common to all call sites.

[33mcommit 5dbec344c675e4c6524c41280c68f26da5daf1ab[m
Author: Domenic Denicola <d@domenic.me>
Date:   Thu Apr 21 12:58:09 2022 -0400

    Add a note about why dialog uses show/close
    
    Closes #7748.

[33mcommit 04a11f278dfafd395a497172face6b5dba082d2c[m
Author: Domenic Denicola <d@domenic.me>
Date:   Thu Apr 21 12:37:56 2022 -0400

    Obsolete the <param> element
    
    Given that plugins are gone from the web platform (with their full removal from the spec being tracked in #6003), it is not useful. In some browsers it can be used to figure out the URL of an <object>, even when that <object> is not being used for a plugin, via params named "movie", "src", "code", or "url". But we decided to remove this behavior from browsers instead of specifying it.
    
    This retains the HTMLParamElement interface, as well as the parser behavior of <param>.
    
    Closes #387. Helps with #6003.

[33mcommit 5448492e4b4b7728a5a95a0c5799359435040ef6[m
Author: Chris Needham <chris.needham@bbc.co.uk>
Date:   Tue Apr 19 11:00:13 2022 +0100

    Editorial: Fix some minor wording issues for media events

[33mcommit fce90e10cba00f811fb75cab56a76395557a38a9[m
Author: Noam Rosenthal <noamr@users.noreply.github.com>
Date:   Tue Apr 19 17:44:28 2022 +0300

    Specify <link rel=preconnect>
    
    Preconnect links obtain a connection to the origin specified by their href="" attribute, taking the crossorigin="" attribute into account.
    
    It is not yet specified for Link headers.

[33mcommit 0101fb46f3e4a900dcf2e2bfd2629d3cb02ca2fc[m
Author: Noam Rosenthal <noamr@users.noreply.github.com>
Date:   Tue Apr 19 00:31:28 2022 +0300

    Specify appropriate times to fetch preload links
    
    Closes #7760.

[33mcommit 19e48714cc08c6304b179a1531bbd9638390a29c[m
Author: Terence Eden <edent@users.noreply.github.com>
Date:   Mon Apr 18 16:19:46 2022 +0100

    Update microdata schema used in <article> example
    
    Fixes #7825.

[33mcommit f7bcff51b481a4d6b37886e1c82d17b3f71cb78b[m
Author: Noam Rosenthal <noamr@users.noreply.github.com>
Date:   Thu Apr 14 19:06:23 2022 +0300

    Fix various timestamp computations
    
    We were often calling "current high resolution time" without passing in a global. This revamps the spec to pass in the global appropriately, or use the unsafe shared current time when that's necessary, or coarsen the time ourselves in cases where that's necessary.
    
    Closes #7776. See also https://github.com/w3c/longtasks/issues/98.

[33mcommit f99550b642df864e8bd1b18d91e366647df751bc[m
Author: Noam Rosenthal <noamr@users.noreply.github.com>
Date:   Thu Apr 14 18:31:42 2022 +0300

    Process early hints (103 responses)
    
    Closes #7598. Closes https://github.com/w3c/preload/issues/114.

[33mcommit 6b024d2ba503f67aa6c304445bb56b659ead03e0[m
Author: Noam Rosenthal <noamr@users.noreply.github.com>
Date:   Tue Apr 12 17:57:07 2022 +0300

    Add note about additional operations when preloading
    
    Closes https://github.com/w3c/preload/issues/116.

[33mcommit 1048a660579c0ac05b6f483cc6e065b9ffca7f5c[m
Author: Henri Sivonen <hsivonen@hsivonen.fi>
Date:   Tue Apr 12 17:55:14 2022 +0300

    Specify navigator.appVersion to match reality
    
    Closes #7773.

[33mcommit 3b5c55f6dcb338e81a1e37d7255b9cb8bc967f37[m
Author: Dominic Farolino <domfarolino@gmail.com>
Date:   Tue Apr 12 00:19:59 2022 +0900

    Add <style>'s disabled IDL attribute
    
    All browsers have implemented this for a long time. (However, unlike HTMLLinkElement, no browsers implement a disabled="" content attribute for <style>.)
    
    Note that this was originally tracked by #1081. That issue was closed in #4519, though it did not spec anything <style> related.

[33mcommit 64d4e4d741b87afec23bbb8863a1e49253700ad3[m
Author: Domenic Denicola <d@domenic.me>
Date:   Fri Apr 1 17:50:23 2022 -0400

    Account for NavigationType → NavigationTimingType rename
    
    See https://github.com/w3c/navigation-timing/pull/172.

[33mcommit 4c6e6f1be9c6736e9e1fd4410d9d78f99f91453a[m
Author: Noam Rosenthal <noamr@users.noreply.github.com>
Date:   Thu Mar 31 21:47:18 2022 +0300

    Fix tracking of the idle period start time
    
    This was accidentally omitted from bd6384368e454761af10e0d594b93a10599a2287.
    
    Closes #7765.

[33mcommit f495c02f034db38ba75aeb04e658cb3e1bcc3a11[m
Author: Noam Rosenthal <noamr@users.noreply.github.com>
Date:   Thu Mar 31 19:54:05 2022 +0300

    Specify range fetching for media elements
    
    See https://github.com/whatwg/html/pull/2814, especially https://github.com/whatwg/html/pull/2814#issuecomment-760982616, for some background.
    
    The strategy taken here is that multiple opaque range responses are OK as long as they're from the same origin. (They don't have to be the same URL.) Programmatic service worker responses are considered a null origin for these purposes.
    
    This matches implemented behaviors.

[33mcommit 89f9bcb6edae0b619e074dd67c9fd031bc86ab9f[m
Author: Noam Rosenthal <noamr@users.noreply.github.com>
Date:   Wed Mar 30 19:26:34 2022 +0300

    Report Resource Timing for <iframe> and <frame>
    
    Part of #6542.

[33mcommit cac6b4149878c96529215bb22b51c3a58214f33d[m
Author: Henri Sivonen <hsivonen@hsivonen.fi>
Date:   Wed Mar 30 19:05:13 2022 +0300

    Avoid suggesting the empty string for navigator.platform
    
    navigator.platform was permitted to return the empty string due to a privacy-motivated spec change in ecefa6e105592656bf592e0abcf0276dad971fbc.
    
    Since 2008, the understanding of changing things like this for privacy has evolved from returning special privacy values to returning a value that is already commonly returned for non-privacy reasons. Therefore, change the spec not to say "the empty string" but to permit returning a string commonly returned on another platform.
    
    Additionally, change the examples to be from the set of values given at https://www.chromium.org/updates/ua-reduction/ to avoid suggesting more-identifying and potentially-less-compatible values. But, for now, avoid actually constraining the permitted values to a reduced set.
    
    Further work on constraining these values is tracked mostly in https://github.com/whatwg/compat; see especially https://github.com/whatwg/compat/issues/174.

[33mcommit cc7626a7bc4725d8a95448175d2d656279e28874[m
Author: Noam Rosenthal <noamr@users.noreply.github.com>
Date:   Tue Mar 29 17:01:56 2022 +0300

    Add a note explaining relList.supports() for feature detection
    
    Closes https://github.com/w3c/preload/issues/126.

[33mcommit 22154a4c1d426dddf187fb12c05fbcb8816c94a5[m
Author: Emilio Cobos Álvarez <emilio@crisal.io>
Date:   Mon Mar 28 20:45:24 2022 +0200

    Make <dialog> styling use system colors
    
    Fixes #7754.

[33mcommit c4ab67d6c611a1407e07e4eb11cb8b24eadbfe4f[m
Author: Ryo Kajiwara <sylph01@s01.ninja>
Date:   Tue Mar 29 03:40:12 2022 +0900

    Be more rigorous about insertion/removal
    
    Part of #2771. This removes the concepts of "node is inserted" and "node is removed" in favor of explicit HTML Standard insertion/removing steps, which are of the form the DOM Standard wants us to use. These HTML Standard insertion/removing steps, in turn, call out to element definition-specific "HTML element insertion/removing steps".
    
    This does not complete #2771, as there remain several less-rigorous definitions, outlined in https://github.com/whatwg/html/issues/2771#issuecomment-1074202744. But it gives us the right scaffolding and prevents any further usage of the node is inserted/removed definitions.

[33mcommit f5def65bda4d01a6a1e105fcf13fe45201b4f48a[m
Author: Joey Arhar <jarhar@chromium.org>
Date:   Wed Mar 23 09:15:21 2022 -0700

    Add hidden=until-found and beforematch
    
    Closes #6040.
    
    Explainer: https://github.com/WICG/display-locking/blob/main/explainers/hidden-content-explainer.md

[33mcommit 332b8b8b187248524c0d2a655fd1334278cbf865[m
Author: Noam Rosenthal <noamr@users.noreply.github.com>
Date:   Thu Mar 17 14:42:57 2022 +0200

    Add a note about late CSP
    
    Closes #7686.

[33mcommit 8a41720f290f9e30a271e89c4e994e2b46fca33f[m
Author: Anne van Kesteren <annevk@annevk.nl>
Date:   Thu Mar 17 09:36:10 2022 +0100

    Meta: match whatwg.org color contrast tweaks
    
    See https://github.com/whatwg/whatwg.org/pull/392 for context.

[33mcommit 4d422bde5f901abdee6402ebd6a52f15141cc44d[m
Author: Domenic Denicola <d@domenic.me>
Date:   Wed Mar 16 10:06:04 2022 -0400

    Remove "responsible document" concept
    
    It was confusing to have this as a generic on environment settings objects, since it only applied to window environment settings objects. Instead, specifications should get the Window object's associated Document directly, if necessary by looking at the settings object's global object (which will, in some cases, be a Window object).
    
    Closes #4335.

[33mcommit a54ae2736ff1c1d754886b719deb6f3a559e4f6a[m
Author: Ryo Kajiwara <sylph01@gmail.com>
Date:   Wed Mar 16 00:24:18 2022 +0900

    Specify the global object when calculating user activation
    
    Closes #6806.

[33mcommit 0098f4497e960b1334abadbc8b4ffa4e0b901361[m
Author: Hidde de Vries <hidde@hiddedevries.nl>
Date:   Mon Mar 14 16:01:24 2022 +0100

    Dev edition: improve color contrast
    
    This improves the color contrast of the following page features:
    
    * The Table of Contents numbering, from 4.19:1 to 4.54:1.
    * The Note boxes, from 3.54:1 to 4.6:1.

[33mcommit 2f88bb42e8e9c7bcd0880edfd27151ad7cd2a360[m
Author: GokhanKabar <gokhankabar@hotmail.fr>
Date:   Mon Mar 14 15:45:03 2022 +0100

    Fix missing <form> rel="" in attribute index
    
    Closes #7683.

[33mcommit 755ae90464d39aae6070afd35df0262d5a0d1685[m
Author: Tim Nguyen <nt1m@users.noreply.github.com>
Date:   Thu Mar 10 17:54:28 2022 +0100

    Add the inert attribute and tweak definition of inert subtrees
    
    Based on work in #4288 by Alice Boxhall.
    
    Tests: https://github.com/web-platform-tests/wpt/tree/master/inert.
    
    Closes #5650.
    
    Co-authored-by: Alice Boxhall <aboxhall@chromium.org>

[33mcommit de7370b65bd38999fbf1ab5f93ed664dfec681d3[m
Author: Xiaocheng Hu <xiaochengh@chromium.org>
Date:   Wed Mar 9 08:46:47 2022 -0800

    Allow script-inserted body to unblock document's rendering
    
    Fixes #7689.

[33mcommit 11781a4943c1f96bd773aa0660b1e938e87a191e[m
Author: Noam Rosenthal <noamr@users.noreply.github.com>
Date:   Tue Mar 8 22:23:51 2022 +0200

    Process preload Link headers
    
    Previously, Link header processing was almost entirely unspecified. This gives it a full processing model; currently it only processes preload Link headers, but in the future it can be extended to others. See #4224.
    
    Notably, this splits up processing of preload Link headers, some at document creation time, and the rest (viewport-dependent ones) when response chunks start arriving.
    
    Closes https://github.com/w3c/preload/issues/148.

[33mcommit deef8bae2e17626891316bee546fa6fb7186bc5a[m
Author: Noam Rosenthal <noamr@users.noreply.github.com>
Date:   Mon Mar 7 17:57:20 2022 +0200

    Do not block the load event for preload and modulepreload
    
    Closes https://github.com/w3c/preload/pull/152.

[33mcommit 89b408ce195442cd37d327125b0c31973ddf1b30[m
Author: Aaron Krajeski <aaronhk@chromium.org>
Date:   Mon Mar 7 10:55:34 2022 -0500

    Make roundRect()'s radii argument optional
    
    Closes #7634.

[33mcommit 696fd284c57b902ef8e5b49cbaf93dd7f9e0f3ac[m
Author: Arthur Sonzogni <arthursonzogni@chromium.org>
Date:   Mon Mar 7 16:50:02 2022 +0100

    Add allow-top-navigation-to-custom-protocols to sandbox=""
    
    For security reasons, web browsers started to block navigations toward custom protocols initiated from within a sandboxed iframe. They are allowed, only when normal navigations are already allowed in top-level frame and when opening new popups. See https://github.com/whatwg/html/pull/7124 and https://github.com/whatwg/html/issues/2191#issuecomment-1006573881 for that background.
    
    It is hard for some websites to handle this change. They would like to not block custom schemes, while continuing to block supported ones. This adds a new "allow-custom-protocol-navigation" value for the sandbox="" attribute, which such sites can use.
    
    Closes #7468.

[33mcommit ca752b01fa82928fde36521eacf81c9012e09d50[m
Author: Simon Pieters <zcorpan@gmail.com>
Date:   Fri Dec 17 12:50:59 2021 +0100

    Make 'true' a truthy value for window.open boolean features
    
    Fixes #7399.

[33mcommit 9d42d2ca8523758893cdc8d7de6e0815e4178b81[m
Author: Noam Rosenthal <noamr@users.noreply.github.com>
Date:   Sun Feb 27 23:07:09 2022 +0200

    Report Resource Timing for <object> and <embed>
    
    Part of #6542.

[33mcommit 8107e8aba3eeeb3503c5567f0f3d27110e987649[m
Author: Noam Rosenthal <noamr@users.noreply.github.com>
Date:   Sun Feb 27 23:05:14 2022 +0200

    Report Resource Timing for EventSource and <track>
    
    Part of #6542.
    
    This also improves the EventSource processing model in general to be more modern and rigorous.

[33mcommit f1250681ef9a2c98f17c15c131f52d2d127d66aa[m
Author: Shu-yu Guo <syg@chromium.org>
Date:   Sun Feb 27 12:58:54 2022 -0800

    Editorial: completion reform for JavaScript AOs
    
    As part of the https://github.com/tc39/ecma262/pull/2547 the JavaScript specification has reformed how it deals with Completion Records, and thus what abstract operations can return. See https://github.com/tc39/ecma262/issues/253#issuecomment-1050160672 for a brief description of when to use ? vs. ! vs. nothing at all.
    
    Additional minor fixes:
    
    * Replace uses of ObjectCreate (which no longer exists) with OrdinaryObjectCreate.
    * Replace "Rethrow any exceptions" with the ? syntax.
    * Use ? with GetFunctionRealm, which can throw due to revoked proxies.

[33mcommit d17eac0aa20d20549ee040248a90407d92c11401[m
Author: Noam Rosenthal <noamr@users.noreply.github.com>
Date:   Tue Feb 22 19:06:26 2022 +0200

    Report <link> Resource Timing
    
    Part of #6542.

[33mcommit 36ccb4e870479b225bce7a3b332f7d69d9f655ca[m
Author: Yutaka Hirano <yhirano@chromium.org>
Date:   Sat Feb 19 02:10:57 2022 +0900

    Remove WebSockets
    
    They have moved to https://websockets.spec.whatwg.org/!

[33mcommit 20e7a327b507a59d5a65090f5c57c8a30c380161[m
Author: Domenic Denicola <d@domenic.me>
Date:   Thu Feb 17 17:14:10 2022 -0500

    Fix broken links to Structured Fields
    
    Closes #7199 by superseding it.

[33mcommit 2ed482c