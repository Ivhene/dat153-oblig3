.class public Lorg/checkerframework/checker/i18n/LocalizableKeyChecker;
.super Lorg/checkerframework/checker/propkey/PropertyKeyChecker;
.source "LocalizableKeyChecker.java"


# annotations
.annotation runtime Ljavax/annotation/processing/SupportedOptions;
    value = {
        "propfiles",
        "bundlenames"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/checkerframework/checker/propkey/PropertyKeyChecker;-><init>()V

    return-void
.end method
