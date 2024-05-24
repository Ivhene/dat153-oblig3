.class public Lnet/bytebuddy/dynamic/Nexus;
.super Ljava/lang/ref/WeakReference;
.source "Nexus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# static fields
.field private static final NO_QUEUE:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY:Ljava/lang/String; = "net.bytebuddy.nexus.disabled"

.field private static final TYPE_INITIALIZERS:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lnet/bytebuddy/dynamic/Nexus;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final classLoaderHashCode:I

.field private final identification:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/dynamic/Nexus;->NO_QUEUE:Ljava/lang/ref/ReferenceQueue;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/bytebuddy/dynamic/Nexus;->TYPE_INITIALIZERS:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;I)V
    .locals 3
    .param p2, "identification"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 85
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/Nexus;->nonAnonymous(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/dynamic/Nexus;->NO_QUEUE:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, v0, v1, v2, p2}, Lnet/bytebuddy/dynamic/Nexus;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;I)V

    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "identification"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;I)V"
        }
    .end annotation

    .line 97
    .local p3, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-Ljava/lang/ClassLoader;>;"
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-direct {p0, p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 100
    iput-object p1, p0, Lnet/bytebuddy/dynamic/Nexus;->name:Ljava/lang/String;

    .line 101
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/dynamic/Nexus;->classLoaderHashCode:I

    .line 102
    iput p4, p0, Lnet/bytebuddy/dynamic/Nexus;->identification:I

    .line 103
    return-void
.end method

.method public static clean(Ljava/lang/ref/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p0, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<-Ljava/lang/ClassLoader;>;"
    sget-object v0, Lnet/bytebuddy/dynamic/Nexus;->TYPE_INITIALIZERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method

.method public static initialize(Ljava/lang/Class;I)V
    .locals 5
    .param p1, "identification"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 135
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lnet/bytebuddy/dynamic/Nexus;->TYPE_INITIALIZERS:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lnet/bytebuddy/dynamic/Nexus;

    invoke-direct {v1, p0, p1}, Lnet/bytebuddy/dynamic/Nexus;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 136
    .local v0, "typeInitializer":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Class;

    aput-object v4, v2, v3

    const-string v3, "onLoad"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    return-void
.end method

.method private static nonAnonymous(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "typeName"    # Ljava/lang/String;

    .line 112
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 113
    .local v0, "anonymousLoaderIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 115
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 113
    :goto_0
    return-object v1
.end method

.method public static register(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;ILjava/lang/Object;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "identification"    # I
    .param p4, "typeInitializer"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 162
    .local p2, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-Ljava/lang/ClassLoader;>;"
    sget-object v0, Lnet/bytebuddy/dynamic/Nexus;->TYPE_INITIALIZERS:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lnet/bytebuddy/dynamic/Nexus;

    invoke-direct {v1, p0, p1, p2, p3}, Lnet/bytebuddy/dynamic/Nexus;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;I)V

    invoke-interface {v0, v1, p4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 192
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 193
    return v0

    .line 194
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 197
    :cond_1
    move-object v2, p1

    check-cast v2, Lnet/bytebuddy/dynamic/Nexus;

    .line 198
    .local v2, "nexus":Lnet/bytebuddy/dynamic/Nexus;
    iget v3, p0, Lnet/bytebuddy/dynamic/Nexus;->classLoaderHashCode:I

    iget v4, v2, Lnet/bytebuddy/dynamic/Nexus;->classLoaderHashCode:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lnet/bytebuddy/dynamic/Nexus;->identification:I

    iget v4, v2, Lnet/bytebuddy/dynamic/Nexus;->identification:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/dynamic/Nexus;->name:Ljava/lang/String;

    iget-object v4, v2, Lnet/bytebuddy/dynamic/Nexus;->name:Ljava/lang/String;

    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/Nexus;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lnet/bytebuddy/dynamic/Nexus;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 198
    :goto_0
    return v0

    .line 195
    .end local v2    # "nexus":Lnet/bytebuddy/dynamic/Nexus;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 184
    iget-object v0, p0, Lnet/bytebuddy/dynamic/Nexus;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 185
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lnet/bytebuddy/dynamic/Nexus;->classLoaderHashCode:I

    add-int/2addr v1, v2

    .line 186
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lnet/bytebuddy/dynamic/Nexus;->identification:I

    add-int/2addr v0, v2

    .line 187
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nexus{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/dynamic/Nexus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", classLoaderHashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/dynamic/Nexus;->classLoaderHashCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", identification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/dynamic/Nexus;->identification:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", classLoader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/Nexus;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    return-object v0
.end method
