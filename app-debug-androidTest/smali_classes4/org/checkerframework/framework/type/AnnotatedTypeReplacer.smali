.class public Lorg/checkerframework/framework/type/AnnotatedTypeReplacer;
.super Ljava/lang/Object;
.source "AnnotatedTypeReplacer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/type/AnnotatedTypeReplacer$Visitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static replace(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/util/Map;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p0, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "Ljava/util/Map<",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            "+",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;",
            ">;)",
            "Lorg/checkerframework/framework/type/AnnotatedTypeMirror;"
        }
    .end annotation

    .line 22
    .local p1, "replacementMap":Ljava/util/Map;, "Ljava/util/Map<+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;+Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeReplacer$Visitor;

    invoke-direct {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeReplacer$Visitor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lorg/checkerframework/framework/type/AnnotatedTypeReplacer$Visitor;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method
