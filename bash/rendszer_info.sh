#!/bin/bash
# Rendszer állapot ellenőrző szkript

echo "============================="
echo "      RENDSZER INFO"
echo "============================="
echo ""

echo "Dátum és idő:"
date
echo ""

echo "Gép neve:"
hostname
echo ""

echo "Memória használat:"
free -h
echo ""

echo "Lemez használat:"
df -h | grep -v tmpfs
echo ""

echo "============================="
echo "Kész!"
echo "============================="
