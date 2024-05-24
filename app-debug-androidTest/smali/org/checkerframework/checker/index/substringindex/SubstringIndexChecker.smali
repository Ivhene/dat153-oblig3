.class public Lorg/checkerframework/checker/index/substringindex/SubstringIndexChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "SubstringIndexChecker.java"


# annotations
.annotation runtime Lorg/checkerframework/framework/source/SuppressWarningsKeys;
    value = {
        "index",
        "substringindex"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method
