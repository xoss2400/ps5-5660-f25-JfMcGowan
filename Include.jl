# setup paths -
const _ROOT = @__DIR__;
const _PATH_TO_SRC = joinpath(_ROOT, "src");
const _PATH_TO_DATA = joinpath(_ROOT, "data");
const _PATH_TO_FIGS = joinpath(_ROOT, "figs");

# make sure all is up to date -
using Pkg
# Activate the project in this folder so `using` pulls from the right env
Pkg.activate(_ROOT)

# If the manifest is missing, pull the finance package into the env before
# instantiating to get all dependencies in place
if isfile(joinpath(_ROOT, "Manifest.toml")) == false
    Pkg.add(path="https://github.com/varnerlab/VLQuantitativeFinancePackage.jl.git")
end

# Ensure deps are installed locally (safe to run even when already instantiated)
Pkg.instantiate()

# load external packages -
using VLQuantitativeFinancePackage
using DataFrames
using Statistics
using Plots
using Colors
using PrettyTables
using CSV
using Distributions
using FileIO
using JLD2
using HypothesisTests
using StatsPlots
using Test
