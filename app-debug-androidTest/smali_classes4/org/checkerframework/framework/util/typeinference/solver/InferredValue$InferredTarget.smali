.class public Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;
.super Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
.source "InferredValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InferredTarget"
.end annotation


# instance fields
.field public final additionalAnnotations:Lorg/checkerframework/framework/util/AnnotationMirrorSet;

.field public final target:Ljavax/lang/model/type/TypeVariable;


# direct methods
.method public constructor <init>(Ljavax/lang/model/type/TypeVariable;Ljava/util/Collection;)V
    .locals 1
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeVariable;",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p2, "additionalAnnotations":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-direct {p0}, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;->target:Ljavax/lang/model/type/TypeVariable;

    .line 51
    new-instance v0, Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    invoke-direct {v0, p2}, Lorg/checkerframework/framework/util/AnnotationMirrorSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/InferredValue$InferredTarget;->additionalAnnotations:Lorg/checkerframework/framework/util/AnnotationMirrorSet;

    .line 52
    return-void
.end method
