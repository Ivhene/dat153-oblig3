.class public Lorg/checkerframework/common/util/report/ReportChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "ReportChecker.java"


# annotations
.annotation runtime Ljavax/annotation/processing/SupportedOptions;
    value = {
        "reportTreeKinds",
        "reportModifiers"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method
