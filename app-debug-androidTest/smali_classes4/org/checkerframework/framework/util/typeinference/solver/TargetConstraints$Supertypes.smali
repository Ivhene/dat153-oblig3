.class public Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;
.super Ljava/lang/Object;
.source "TargetConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Supertypes"
.end annotation


# instance fields
.field public primaries:Lorg/checkerframework/framework/util/AnnotationMirrorMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/framework/util/AnnotationMirrorMap<",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;"
        }
    .end annotation
.end field

.field public final targets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeVariable;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;"
        }
    .end annotation
.end field

.field public final types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Lorg/checkerframework/framework/util/AnnotationMirrorSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->primaries:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    .line 76
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->types:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->targets:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->primaries:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->clear()V

    .line 86
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->types:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;->targets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 88
    return-void
.end method
