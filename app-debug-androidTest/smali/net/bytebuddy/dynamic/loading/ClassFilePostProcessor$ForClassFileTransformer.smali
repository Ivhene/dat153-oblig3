.class public Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;
.super Ljava/lang/Object;
.source "ClassFilePostProcessor.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForClassFileTransformer"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final UNLOADED_TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final classFileTransformer:Ljava/lang/instrument/ClassFileTransformer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->UNLOADED_TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/instrument/ClassFileTransformer;)V
    .locals 0
    .param p1, "classFileTransformer"    # Ljava/lang/instrument/ClassFileTransformer;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->classFileTransformer:Ljava/lang/instrument/ClassFileTransformer;

    .line 81
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->classFileTransformer:Ljava/lang/instrument/ClassFileTransformer;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->classFileTransformer:Ljava/lang/instrument/ClassFileTransformer;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->classFileTransformer:Ljava/lang/instrument/ClassFileTransformer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/security/ProtectionDomain;[B)[B
    .locals 6
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p4, "binaryRepresentation"    # [B

    .line 88
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->classFileTransformer:Ljava/lang/instrument/ClassFileTransformer;

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->UNLOADED_TYPE:Ljava/lang/Class;

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Ljava/lang/instrument/ClassFileTransformer;->transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/instrument/IllegalClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v0, "transformed":[B
    if-nez v0, :cond_0

    move-object v1, p4

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 90
    .end local v0    # "transformed":[B
    :catch_0
    move-exception v0

    .line 91
    .local v0, "exception":Ljava/lang/instrument/IllegalClassFormatException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to transform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
