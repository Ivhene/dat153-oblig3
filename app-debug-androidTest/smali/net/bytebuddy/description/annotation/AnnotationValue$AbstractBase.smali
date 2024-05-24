.class public abstract Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;
.super Ljava/lang/Object;
.source "AnnotationValue.java"

# interfaces
.implements Lnet/bytebuddy/description/annotation/AnnotationValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/annotation/AnnotationValue<",
        "TU;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 708
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;, "Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase<TU;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .param p1, "property"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "TU;TV;>;"
        }
    .end annotation

    .line 719
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;, "Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase<TU;TV;>;"
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;->filter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TW;>;)TW;"
        }
    .end annotation

    .line 714
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;, "Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase<TU;TV;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TW;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;->resolve()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
