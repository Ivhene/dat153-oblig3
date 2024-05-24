.class public Lorg/checkerframework/checker/guieffect/GuiEffectChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "GuiEffectChecker.java"


# annotations
.annotation runtime Lorg/checkerframework/framework/qual/StubFiles;
    value = {
        "org-eclipse.astub",
        "org-osgi.astub",
        "org-swtchart.astub"
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/source/SupportedLintOptions;
    value = {
        "debugSpew"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method
