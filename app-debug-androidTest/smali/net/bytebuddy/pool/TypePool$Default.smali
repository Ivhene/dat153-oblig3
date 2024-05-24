.class public Lnet/bytebuddy/pool/TypePool$Default;
.super Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;,
        Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription;,
        Lnet/bytebuddy/pool/TypePool$Default$GenericTypeExtractor;,
        Lnet/bytebuddy/pool/TypePool$Default$ParameterBag;,
        Lnet/bytebuddy/pool/TypePool$Default$GenericTypeRegistrant;,
        Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;,
        Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;,
        Lnet/bytebuddy/pool/TypePool$Default$WithLazyResolution;,
        Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final IGNORE_METHOD:Lnet/bytebuddy/jar/asm/MethodVisitor;


# instance fields
.field protected final classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

.field protected final readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 697
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/pool/TypePool$Default;->IGNORE_METHOD:Lnet/bytebuddy/jar/asm/MethodVisitor;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V
    .locals 1
    .param p1, "cacheProvider"    # Lnet/bytebuddy/pool/TypePool$CacheProvider;
    .param p2, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;
    .param p3, "readerMode"    # Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    .line 717
    sget-object v0, Lnet/bytebuddy/pool/TypePool$Empty;->INSTANCE:Lnet/bytebuddy/pool/TypePool$Empty;

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/pool/TypePool$Default;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;Lnet/bytebuddy/pool/TypePool;)V

    .line 718
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;Lnet/bytebuddy/pool/TypePool;)V
    .locals 0
    .param p1, "cacheProvider"    # Lnet/bytebuddy/pool/TypePool$CacheProvider;
    .param p2, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;
    .param p3, "readerMode"    # Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;
    .param p4, "parentPool"    # Lnet/bytebuddy/pool/TypePool;

    .line 729
    invoke-direct {p0, p1, p4}, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/pool/TypePool;)V

    .line 730
    iput-object p2, p0, Lnet/bytebuddy/pool/TypePool$Default;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 731
    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    .line 732
    return-void
.end method

.method static synthetic access$3400()Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 1

    .line 692
    sget-object v0, Lnet/bytebuddy/pool/TypePool$Default;->IGNORE_METHOD:Lnet/bytebuddy/jar/asm/MethodVisitor;

    return-object v0
.end method

.method public static of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 772
    invoke-static {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default;->of(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/pool/TypePool;
    .locals 3
    .param p0, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 783
    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default;

    new-instance v1, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;

    invoke-direct {v1}, Lnet/bytebuddy/pool/TypePool$CacheProvider$Simple;-><init>()V

    sget-object v2, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->FAST:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-direct {v0, v1, p0, v2}, Lnet/bytebuddy/pool/TypePool$Default;-><init>(Lnet/bytebuddy/pool/TypePool$CacheProvider;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;)V

    return-object v0
.end method

.method public static ofBootLoader()Lnet/bytebuddy/pool/TypePool;
    .locals 1

    .line 762
    invoke-static {}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->ofBootLoader()Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default;->of(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    return-object v0
.end method

.method public static ofPlatformLoader()Lnet/bytebuddy/pool/TypePool;
    .locals 1

    .line 752
    invoke-static {}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->ofPlatformLoader()Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default;->of(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    return-object v0
.end method

.method public static ofSystemLoader()Lnet/bytebuddy/pool/TypePool;
    .locals 1

    .line 741
    invoke-static {}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->ofSystemLoader()Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default;->of(Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0

    return-object v0
.end method

.method private parse([B)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 3
    .param p1, "binaryRepresentation"    # [B

    .line 805
    invoke-static {p1}, Lnet/bytebuddy/utility/OpenedClassReader;->of([B)Lnet/bytebuddy/jar/asm/ClassReader;

    move-result-object v0

    .line 806
    .local v0, "classReader":Lnet/bytebuddy/jar/asm/ClassReader;
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    invoke-direct {v1, p0}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default;)V

    .line 807
    .local v1, "typeExtractor":Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-virtual {v2}, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->getFlags()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->accept(Lnet/bytebuddy/jar/asm/ClassVisitor;I)V

    .line 808
    invoke-virtual {v1}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->toTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected doDescribe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 789
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object v0

    .line 790
    .local v0, "resolution":Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->isResolved()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/bytebuddy/pool/TypePool$Resolution$Simple;

    .line 791
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/bytebuddy/pool/TypePool$Default;->parse([B)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/pool/TypePool$Resolution$Simple;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/pool/TypePool$Resolution$Illegal;

    invoke-direct {v1, p1}, Lnet/bytebuddy/pool/TypePool$Resolution$Illegal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_0
    return-object v1

    .line 793
    .end local v0    # "resolution":Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    :catch_0
    move-exception v0

    .line 794
    .local v0, "exception":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error while reading class file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    check-cast p1, Lnet/bytebuddy/pool/TypePool$Default;

    iget-object v3, p1, Lnet/bytebuddy/pool/TypePool$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object p1, p1, Lnet/bytebuddy/pool/TypePool$Default;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/pool/TypePool$AbstractBase$Hierarchical;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default;->readerMode:Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;

    invoke-virtual {v1}, Lnet/bytebuddy/pool/TypePool$Default$ReaderMode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
