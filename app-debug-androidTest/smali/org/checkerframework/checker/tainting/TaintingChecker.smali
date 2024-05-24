.class public Lorg/checkerframework/checker/tainting/TaintingChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "TaintingChecker.java"


# annotations
.annotation runtime Lorg/checkerframework/framework/source/SuppressWarningsKeys;
    value = {
        "untainted",
        "tainting"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method
