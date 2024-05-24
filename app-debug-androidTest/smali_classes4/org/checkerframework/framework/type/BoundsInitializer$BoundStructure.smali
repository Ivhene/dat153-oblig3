.class abstract Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;
.super Ljava/lang/Object;
.source "BoundsInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/BoundsInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BoundStructure"
.end annotation


# instance fields
.field public final currentPath:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

.field public final pathToTypeVar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;",
            "Ljavax/lang/model/type/TypeVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;->pathToTypeVar:Ljava/util/Map;

    .line 855
    new-instance v0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$1;)V

    iput-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;->currentPath:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    .line 857
    return-void
.end method


# virtual methods
.method public addTypeVar(Ljavax/lang/model/type/TypeVariable;)V
    .locals 2
    .param p1, "typeVariable"    # Ljavax/lang/model/type/TypeVariable;

    .line 860
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;->pathToTypeVar:Ljava/util/Map;

    iget-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;->currentPath:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;->copy()Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    return-void
.end method
