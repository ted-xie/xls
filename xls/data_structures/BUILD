# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auxiliary data structures.

package(
    default_visibility = ["//xls:xls_internal"],
    licenses = ["notice"],  # Apache 2.0
)

cc_library(
    name = "union_find",
    hdrs = ["union_find.h"],
    deps = [
        "//xls/common:integral_types",
    ],
)

cc_test(
    name = "union_find_test",
    srcs = ["union_find_test.cc"],
    deps = [
        ":union_find",
        "@com_google_absl//absl/memory",
        "@com_google_googletest//:gtest_main",
    ],
)

cc_library(
    name = "inline_bitmap",
    hdrs = ["inline_bitmap.h"],
    deps = [
        "@com_google_absl//absl/base",
        "@com_google_absl//absl/container:inlined_vector",
        "//xls/common:bits_util",
        "//xls/common:integral_types",
        "//xls/common:math_util",
        "//xls/common/logging",
    ],
)

cc_library(
    name = "leaf_type_tree",
    hdrs = ["leaf_type_tree.h"],
    deps = [
        "@com_google_absl//absl/types:span",
        "//xls/common/logging",
        "//xls/ir:type",
    ],
)

cc_library(
    name = "algorithm",
    hdrs = ["algorithm.h"],
    deps = [
        "@com_google_absl//absl/functional:function_ref",
        "@com_google_absl//absl/types:span",
        "//xls/common:integral_types",
    ],
)

cc_library(
    name = "binary_decision_diagram",
    srcs = ["binary_decision_diagram.cc"],
    hdrs = ["binary_decision_diagram.h"],
    deps = [
        "@com_google_absl//absl/container:flat_hash_map",
        "@com_google_absl//absl/status",
        "@com_google_absl//absl/strings",
        "@com_google_absl//absl/strings:str_format",
        "//xls/common:integral_types",
        "//xls/common:strong_int",
        "//xls/common/logging",
        "//xls/common/logging:vlog_is_on",
        "//xls/common/status:statusor",
    ],
)

cc_library(
    name = "min_cut",
    srcs = ["min_cut.cc"],
    hdrs = ["min_cut.h"],
    deps = [
        "@com_google_absl//absl/container:flat_hash_map",
        "@com_google_absl//absl/container:flat_hash_set",
        "@com_google_absl//absl/strings",
        "@com_google_absl//absl/strings:str_format",
        "@com_google_absl//absl/types:span",
        "//xls/common:strong_int",
        "//xls/common/logging",
        "//xls/common/logging:log_lines",
        "//xls/common/logging:vlog_is_on",
    ],
)

cc_library(
    name = "binary_search",
    srcs = ["binary_search.cc"],
    hdrs = ["binary_search.h"],
    deps = [
        "@com_google_absl//absl/functional:function_ref",
        "//xls/common:integral_types",
        "//xls/common/logging",
        "//xls/common/status:ret_check",
        "//xls/common/status:status_macros",
        "//xls/common/status:statusor",
    ],
)

cc_test(
    name = "inline_bitmap_test",
    srcs = ["inline_bitmap_test.cc"],
    deps = [
        ":inline_bitmap",
        "@com_google_absl//absl/memory",
        "@com_google_googletest//:gtest_main",
    ],
)

cc_test(
    name = "leaf_type_tree_test",
    srcs = ["leaf_type_tree_test.cc"],
    deps = [
        ":leaf_type_tree",
        "@com_google_absl//absl/strings",
        "//xls/ir",
        "//xls/ir:bits",
        "//xls/ir:ir_parser",
        "@com_google_googletest//:gtest_main",
    ],
)

cc_test(
    name = "algorithm_test",
    srcs = ["algorithm_test.cc"],
    deps = [
        ":algorithm",
        "@com_google_absl//absl/memory",
        "@com_google_absl//absl/strings:str_format",
        "//xls/ir",
        "//xls/ir:function_builder",
        "//xls/ir:ir_test_base",
        "@com_google_googletest//:gtest_main",
    ],
)

cc_test(
    name = "binary_decision_diagram_test",
    srcs = ["binary_decision_diagram_test.cc"],
    deps = [
        ":binary_decision_diagram",
        "@com_google_absl//absl/container:inlined_vector",
        "//xls/common/logging",
        "//xls/common/status:matchers",
        "//xls/ir:bits",
        "//xls/ir:format_preference",
        "@com_google_googletest//:gtest_main",
    ],
)

cc_test(
    name = "min_cut_test",
    srcs = ["min_cut_test.cc"],
    deps = [
        ":min_cut",
        "@com_google_absl//absl/container:flat_hash_map",
        "@com_google_absl//absl/container:flat_hash_set",
        "@com_google_absl//absl/random",
        "@com_google_absl//absl/random:distributions",
        "@com_google_absl//absl/random:mocking_bit_gen",
        "@com_google_absl//absl/strings:str_format",
        "//xls/common/logging",
        "@com_google_googletest//:gtest_main",
    ],
)

cc_test(
    name = "binary_search_test",
    srcs = ["binary_search_test.cc"],
    deps = [
        ":binary_search",
        "//xls/common/status:matchers",
        "@com_google_googletest//:gtest_main",
    ],
)
