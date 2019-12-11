% ####################################################################
% Filename: b_lcaGet.m
% Author: Chengcheng Xu (charliex@slac.stanford.ed)
% Date: 04/26/2019
% ####################################################################
function [readback] = b_lcaGet(PV)

PV_proc = [PV '.PROC'];
lcaPut(PV_proc, 1);
readback = lcaGet(PV);