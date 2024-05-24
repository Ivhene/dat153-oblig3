.class Lorg/checkerframework/framework/type/BoundsInitializer$WildcardStructure;
.super Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;
.source "BoundsInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/BoundsInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WildcardStructure"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 864
    invoke-direct {p0}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/framework/type/BoundsInitializer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/framework/type/BoundsInitializer$1;

    .line 864
    invoke-direct {p0}, Lorg/checkerframework/framework/type/BoundsInitializer$WildcardStructure;-><init>()V

    return-void
.end method
