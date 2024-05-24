.class public Lorg/checkerframework/checker/index/samelen/SameLenChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "SameLenChecker.java"


# annotations
.annotation runtime Lorg/checkerframework/framework/source/SuppressWarningsKeys;
    value = {
        "index",
        "samelen"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method
