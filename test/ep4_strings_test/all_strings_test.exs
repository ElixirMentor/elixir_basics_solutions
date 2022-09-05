defmodule AllStringsTest do
  use ExUnit.Case
  doctest AllStrings

  describe "initial/1" do
    test "returns capitalized first letter with period follwed by a space" do
      assert AllStrings.initial("blork") == "B. "
      assert AllStrings.initial("Blork erlang") == "B. "
    end
  end

  describe "initials/1" do
    test "returns initials with periods between" do
      assert AllStrings.initials("blork erlang") == "B. E."
      assert AllStrings.initials("Blork erlang jr") == "B. E. J."
    end
  end

  describe "build_saucer/0" do
    test "returns saucer string" do
      assert AllStrings.build_saucer() == "\n                    %%%%%%%%%%%%%%%%%%%%\n               %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n      ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n  ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n************************************************************\n    ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n       ,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,\n            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n\n"
    end
  end

  describe "customized_spacecraft/1" do
    test "returns saucer string" do
      assert AllStrings.customized_spacecraft("blork erlang") ==      "\n                    %%%%%%%%%%%%%%%%%%%%\n               %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n      ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n  ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n******************** B. E.'s  SPACECRAFT *******************\n    ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n       ,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,\n            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n\n"
      assert AllStrings.customized_spacecraft("jacob A luetzow") ==      "\n                    %%%%%%%%%%%%%%%%%%%%\n               %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n      ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n  ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n******************** J. A. L.'s  SPACECRAFT *******************\n    ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n       ,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,\n            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n\n"
    end
  end

  describe "display_saucer/0" do
    test "returns atom" do
      assert AllStrings.display_saucer() == :ok
    end
  end

  describe "display_custom_spacecraft/1" do
    test "returns atom" do
      assert AllStrings.display_custom_spacecraft("blork erlang") == :ok
    end
  end
end
