.class public Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
.super Lnet/bytebuddy/asm/MemberAttributeExtension;
.source "MemberAttributeExtension.java"

# interfaces
.implements Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberAttributeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/asm/MemberAttributeExtension<",
        "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;",
        ">;",
        "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 225
    sget-object v0, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;->APPEND_DEFAULTS:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Default;

    invoke-direct {p0, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 1
    .param p1, "annotationValueFilterFactory"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    .line 234
    sget-object v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$NoOp;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)V

    .line 235
    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)V
    .locals 0
    .param p1, "annotationValueFilterFactory"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;
    .param p2, "attributeAppenderFactory"    # Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    .line 244
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/asm/MemberAttributeExtension;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Ljava/lang/Object;)V

    .line 245
    return-void
.end method


# virtual methods
.method public annotateMethod(Ljava/util/Collection;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;"
        }
    .end annotation

    .line 284
    .local p1, "annotations":Ljava/util/Collection;, "Ljava/util/Collection<+Lnet/bytebuddy/description/annotation/AnnotationDescription;>;"
    new-instance v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->attribute(Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object v0

    return-object v0
.end method

.method public annotateMethod(Ljava/util/List;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;"
        }
    .end annotation

    .line 264
    .local p1, "annotations":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->annotateMethod(Ljava/util/Collection;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object v0

    return-object v0
.end method

.method public varargs annotateMethod([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 1
    .param p1, "annotation"    # [Ljava/lang/annotation/Annotation;

    .line 254
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->annotateMethod(Ljava/util/List;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object v0

    return-object v0
.end method

.method public varargs annotateMethod([Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 1
    .param p1, "annotation"    # [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 274
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->annotateMethod(Ljava/util/Collection;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object v0

    return-object v0
.end method

.method public annotateParameter(ILjava/util/Collection;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;"
        }
    .end annotation

    .line 328
    .local p2, "annotations":Ljava/util/Collection;, "Ljava/util/Collection<+Lnet/bytebuddy/description/annotation/AnnotationDescription;>;"
    if-ltz p1, :cond_0

    .line 331
    new-instance v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Explicit;-><init>(ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->attribute(Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object v0

    return-object v0

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter index cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public annotateParameter(ILjava/util/List;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;"
        }
    .end annotation

    .line 306
    .local p2, "annotations":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->annotateParameter(ILjava/util/Collection;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object v0

    return-object v0
.end method

.method public varargs annotateParameter(I[Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 1
    .param p1, "index"    # I
    .param p2, "annotation"    # [Ljava/lang/annotation/Annotation;

    .line 295
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->annotateParameter(ILjava/util/List;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object v0

    return-object v0
.end method

.method public varargs annotateParameter(I[Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 1
    .param p1, "index"    # I
    .param p2, "annotation"    # [Lnet/bytebuddy/description/annotation/AnnotationDescription;

    .line 317
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->annotateParameter(ILjava/util/Collection;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;
    .locals 6
    .param p1, "attributeAppenderFactory"    # Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    .line 342
    new-instance v0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    new-instance v2, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory$Compound;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    iget-object v4, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->attributeAppenderFactory:Ljava/lang/Object;

    check-cast v4, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory$Compound;-><init>([Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)V

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;-><init>(Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)V

    return-object v0
.end method

.method public on(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/asm/AsmVisitorWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper;"
        }
    .end annotation

    .line 368
    .local p1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    new-instance v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    invoke-direct {v0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->invokable(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object v0

    return-object v0
.end method

.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;II)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 7
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p4, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p5, "typePool"    # Lnet/bytebuddy/pool/TypePool;
    .param p6, "writerFlags"    # I
    .param p7, "readerFlags"    # I

    .line 355
    new-instance v6, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->attributeAppenderFactory:Ljava/lang/Object;

    check-cast v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    .line 357
    invoke-interface {v0, p1}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    move-result-object v3

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    .line 358
    invoke-interface {v0, p2}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/MemberAttributeExtension$ForMethod$AttributeAppendingMethodVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;Lnet/bytebuddy/asm/MemberAttributeExtension$1;)V

    .line 355
    return-object v6
.end method
