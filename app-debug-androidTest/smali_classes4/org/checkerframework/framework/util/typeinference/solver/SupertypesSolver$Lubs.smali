.class Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;
.super Ljava/lang/Object;
.source "SupertypesSolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Lubs"
.end annotation


# instance fields
.field public final primaries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;>;"
        }
    .end annotation
.end field

.field public final types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;->types:Ljava/util/Map;

    .line 181
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;->primaries:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addPrimaries(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/util/AnnotationMirrorMap;)V
    .locals 2
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p2, "primaries":Lorg/checkerframework/framework/util/AnnotationMirrorMap;, "Lorg/checkerframework/framework/util/AnnotationMirrorMap<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;->primaries:Ljava/util/Map;

    new-instance v1, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-direct {v1, p2}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void
.end method

.method public addType(Ljavax/lang/model/type/TypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 1
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 190
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;->types:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public getPrimaries(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .locals 1
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeVariable;",
            ")",
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;->primaries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    return-object v0
.end method

.method public getType(Ljavax/lang/model/type/TypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;

    .line 198
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;->types:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method
