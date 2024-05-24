.class public Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
.super Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
.source "AnnotatedTypeMirror.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnotatedPrimitiveType"
.end annotation


# direct methods
.method private constructor <init>(Ljavax/lang/model/type/PrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p1, "type"    # Ljavax/lang/model/type/PrimitiveType;
    .param p2, "factory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 1751
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;-><init>(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V

    .line 1752
    return-void
.end method

.method synthetic constructor <init>(Ljavax/lang/model/type/PrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;)V
    .locals 0
    .param p1, "x0"    # Ljavax/lang/model/type/PrimitiveType;
    .param p2, "x1"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "x2"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$1;

    .line 1748
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;-><init>(Ljavax/lang/model/type/PrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 1756
    .local p1, "v":Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;, "Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeVisitor;->visitPrimitive(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .locals 1

    .line 1771
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .locals 1
    .param p1, "copyAnnotations"    # Z

    .line 1766
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;

    invoke-direct {v0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;-><init>(Z)V

    invoke-virtual {v0, p0}, Lorg/checkerframework/framework/type/AnnotatedTypeCopier;->visit(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1748
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->deepCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 0

    .line 1748
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->deepCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    move-result-object p1

    return-object p1
.end method

.method public getUnderlyingType()Ljavax/lang/model/type/PrimitiveType;
    .locals 1

    .line 1761
    iget-object v0, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->actualType:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/PrimitiveType;

    return-object v0
.end method

.method public bridge synthetic getUnderlyingType()Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 1748
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->getUnderlyingType()Ljavax/lang/model/type/PrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .locals 1

    .line 1786
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    .locals 3
    .param p1, "copyAnnotations"    # Z

    .line 1776
    new-instance v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    iget-object v1, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->actualType:Ljavax/lang/model/type/TypeMirror;

    check-cast v1, Ljavax/lang/model/type/PrimitiveType;

    iget-object v2, p0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;-><init>(Ljavax/lang/model/type/PrimitiveType;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 1778
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;
    if-eqz p1, :cond_0

    .line 1779
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->getAnnotationsField()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 1781
    :cond_0
    return-object v0
.end method

.method public bridge synthetic shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1

    .line 1748
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->shallowCopy()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 0

    .line 1748
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;->shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedPrimitiveType;

    move-result-object p1

    return-object p1
.end method
