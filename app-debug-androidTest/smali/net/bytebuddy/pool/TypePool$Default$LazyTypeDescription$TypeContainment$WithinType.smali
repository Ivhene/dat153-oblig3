.class public Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;
.super Ljava/lang/Object;
.source "TypePool.java"

# interfaces
.implements Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithinType"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final localType:Z

.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "internalName"    # Ljava/lang/String;
    .param p2, "localType"    # Z

    .line 3030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3031
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;->name:Ljava/lang/String;

    .line 3032
    iput-boolean p2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;->localType:Z

    .line 3033
    return-void
.end method


# virtual methods
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
    iget-boolean v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;->localType:Z

    check-cast p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;

    iget-boolean v3, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;->localType:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;->name:Ljava/lang/String;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getEnclosingMethod(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1
    .param p1, "typePool"    # Lnet/bytebuddy/pool/TypePool;

    .line 3039
    sget-object v0, Lnet/bytebuddy/description/method/MethodDescription;->UNDEFINED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public getEnclosingType(Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1
    .param p1, "typePool"    # Lnet/bytebuddy/pool/TypePool;

    .line 3046
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;->localType:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isLocalType()Z
    .locals 1

    .line 3060
    iget-boolean v0, p0, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$TypeContainment$WithinType;->localType:Z

    return v0
.end method

.method public isSelfContained()Z
    .locals 1

    .line 3053
    const/4 v0, 0x0

    return v0
.end method
