.class Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;
.super Ljava/util/LinkedHashMap;
.source "BoundsInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReferenceMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;",
        "Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 738
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/framework/type/BoundsInitializer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/framework/type/BoundsInitializer$1;

    .line 738
    invoke-direct {p0}, Lorg/checkerframework/framework/type/BoundsInitializer$InitializerVisitor$ReferenceMap;-><init>()V

    return-void
.end method
