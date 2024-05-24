.class public Lorg/checkerframework/common/aliasing/AliasingChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "AliasingChecker.java"


# annotations
.annotation runtime Lorg/checkerframework/framework/qual/StubFiles;
    value = {
        "android.astub"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method
