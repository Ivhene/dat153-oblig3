.class public final Lorg/checkerframework/checker/interning/InterningChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "InterningChecker.java"


# annotations
.annotation runtime Ljavax/annotation/processing/SupportedOptions;
    value = {
        "checkclass"
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/StubFiles;
    value = {
        "com-sun.astub",
        "org-jcp.astub",
        "org-xml.astub",
        "sun.astub"
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/source/SupportedLintOptions;
    value = {
        "dotequals"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method
