.class public Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge$Compiled;
.super Ljava/lang/Object;
.source "MethodRegistry.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$Compiled;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Compiled"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge$Compiled;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 175
    return-void
.end method


# virtual methods
.method public assemble(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;Lnet/bytebuddy/description/modifier/Visibility;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    .locals 1
    .param p1, "methodDescription"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p2, "attributeAppender"    # Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;
    .param p3, "visibility"    # Lnet/bytebuddy/description/modifier/Visibility;

    .line 181
    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge$Compiled;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v0, p1, p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge$Compiled;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge$Compiled;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge$Compiled;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge$Compiled;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForVisibilityBridge$Compiled;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
