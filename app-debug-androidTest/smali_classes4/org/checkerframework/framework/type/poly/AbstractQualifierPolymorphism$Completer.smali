.class Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;
.super Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;
.source "AbstractQualifierPolymorphism.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Completer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;


# direct methods
.method constructor <init>(Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    .line 301
    iput-object p1, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 301
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "p"    # Ljava/lang/Void;

    .line 304
    iget-object v0, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    iget-object v0, v0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->polyQuals:Lorg/checkerframework/framework/util/AnnotationMirrorMap;

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/AnnotationMirrorMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 305
    .local v1, "pqentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 306
    .local v2, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 308
    .local v3, "poly":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    invoke-virtual {p1, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->removeAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    .line 310
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-eq v4, v5, :cond_0

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    if-eq v4, v5, :cond_0

    .line 312
    iget-object v4, p0, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism$Completer;->this$0:Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;

    iget-object v4, v4, Lorg/checkerframework/framework/type/poly/AbstractQualifierPolymorphism;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v4, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getBottomAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 315
    .end local v1    # "pqentry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v2    # "top":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "poly":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 316
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeScanner;->scan(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
