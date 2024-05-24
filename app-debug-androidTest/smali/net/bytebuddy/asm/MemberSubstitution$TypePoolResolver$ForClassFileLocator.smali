.class public Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForClassFileLocator;
.super Ljava/lang/Object;
.source "MemberSubstitution.java"

# interfaces
.implements Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForClassFileLocator"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

.field private final readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/ClassFileLocator;)V
    .locals 1
    .param p1, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 766
    sget-object v0, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->FAST:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForClassFileLocator;-><init>(Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V

    .line 767
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V
    .locals 0
    .param p1, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;
    .param p2, "readerMode"    # Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForClassFileLocator;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 777
    iput-object p2, p0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForClassFileLocator;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    .line 778
    return-void
.end method

.method public static of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;
    .locals 2
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 787
    new-instance v0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForClassFileLocator;

    invoke-static {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForClassFileLocator;-><init>(Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForClassFileLocator;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    check-cast p1, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForClassFileLocator;

    iget-object v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForClassFileLocator;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForClassFileLocator;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object p1, p1, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForClassFileLocator;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForClassFileLocator;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForClassFileLocator;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForClassFileLocator;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-virtual {v1}, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/pool/TypePool;
    .locals 4
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "typePool"    # Lnet/bytebuddy/pool/TypePool;

    .line 794
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;

    invoke-direct {v1}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;-><init>()V

    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForClassFileLocator;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v3, p0, Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver$ForClassFileLocator;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-direct {v0, v1, v2, v3, p3}, Lnet/bytebuddy/pool/TypePool$Default;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;Lnet/bytebuddy/pool/TypePool;)V

    return-object v0
.end method
