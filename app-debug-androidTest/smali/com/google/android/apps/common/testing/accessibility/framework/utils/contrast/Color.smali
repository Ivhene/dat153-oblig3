.class public final Lcom/google/android/apps/common/testing/accessibility/framework/utils/contrast/Color;
.super Ljava/lang/Object;
.source "Color.java"


# static fields
.field public static final BLACK:I = -0x1000000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static alpha(I)I
    .locals 1
    .param p0, "color"    # I

    .line 28
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method public static blue(I)I
    .locals 1
    .param p0, "color"    # I

    .line 43
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static green(I)I
    .locals 1
    .param p0, "color"    # I

    .line 38
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static red(I)I
    .locals 1
    .param p0, "color"    # I

    .line 33
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
