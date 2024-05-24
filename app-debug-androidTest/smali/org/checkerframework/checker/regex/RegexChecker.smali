.class public Lorg/checkerframework/checker/regex/RegexChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "RegexChecker.java"


# annotations
.annotation runtime Lorg/checkerframework/framework/qual/RelevantJavaTypes;
    value = {
        Ljava/lang/CharSequence;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/StubFiles;
    value = {
        "apache-xerces.astub"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method
