.class public abstract Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;
.super Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;
.source "MethodDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$Executable;,
        Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase$ForLoadedExecutable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;
    .locals 1

    .line 335
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;->asDefined()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public asDefined()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 0

    .line 341
    return-object p0
.end method

.method public getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3

    .line 348
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0

    .line 350
    :cond_0
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .local v0, "declaringType":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .line 352
    .local v1, "enclosingDeclaringType":Lnet/bytebuddy/description/type/TypeDescription;
    if-nez v1, :cond_1

    .line 353
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForGenerifiedErasure;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    return-object v2

    .line 355
    :cond_1
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    goto :goto_0

    .line 357
    :cond_2
    invoke-static {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForGenerifiedErasure;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    .line 355
    :goto_0
    return-object v2

    .line 360
    .end local v0    # "declaringType":Lnet/bytebuddy/description/type/TypeDescription;
    .end local v1    # "enclosingDeclaringType":Lnet/bytebuddy/description/type/TypeDescription;
    :cond_3
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForGenerifiedErasure;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method
