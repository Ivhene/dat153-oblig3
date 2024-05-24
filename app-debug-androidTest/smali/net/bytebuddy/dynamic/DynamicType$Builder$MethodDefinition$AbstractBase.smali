.class public abstract Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;
.super Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;
.source "DynamicType.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator<",
        "TU;>;",
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
        "TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2957
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;, "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase<TU;>;"
    invoke-direct {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Delegator;-><init>()V

    return-void
.end method


# virtual methods
.method public annotateMethod(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TU;>;"
        }
    .end annotation

    .line 2970
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;, "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase<TU;>;"
    .local p1, "annotations":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;->annotateMethod(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;

    move-result-object v0

    return-object v0
.end method

.method public varargs annotateMethod([Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .locals 1
    .param p1, "annotation"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TU;>;"
        }
    .end annotation

    .line 2963
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;, "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase<TU;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;->annotateMethod(Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;

    move-result-object v0

    return-object v0
.end method

.method public varargs annotateMethod([Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .locals 1
    .param p1, "annotation"    # [Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TU;>;"
        }
    .end annotation

    .line 2977
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;, "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase<TU;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;->annotateMethod(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;

    move-result-object v0

    return-object v0
.end method

.method public annotateParameter(ILjava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TU;>;"
        }
    .end annotation

    .line 2991
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;, "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase<TU;>;"
    .local p2, "annotations":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;->annotateParameter(ILjava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;

    move-result-object v0

    return-object v0
.end method

.method public varargs annotateParameter(I[Ljava/lang/annotation/Annotation;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .locals 1
    .param p1, "index"    # I
    .param p2, "annotation"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TU;>;"
        }
    .end annotation

    .line 2984
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;, "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase<TU;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;->annotateParameter(ILjava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;

    move-result-object v0

    return-object v0
.end method

.method public varargs annotateParameter(I[Lnet/bytebuddy/description/annotation/AnnotationDescription;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .locals 1
    .param p1, "index"    # I
    .param p2, "annotation"    # [Lnet/bytebuddy/description/annotation/AnnotationDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TU;>;"
        }
    .end annotation

    .line 2998
    .local p0, "this":Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;, "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase<TU;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase;->annotateParameter(ILjava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;

    move-result-object v0

    return-object v0
.end method
