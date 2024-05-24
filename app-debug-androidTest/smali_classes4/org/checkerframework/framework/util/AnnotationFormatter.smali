.class public interface abstract Lorg/checkerframework/framework/util/AnnotationFormatter;
.super Ljava/lang/Object;
.source "AnnotationFormatter.java"


# virtual methods
.method public abstract formatAnnotationMirror(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation
.end method

.method public abstract formatAnnotationString(Ljava/util/Collection;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation
.end method
