.class public Lnet/bytebuddy/dynamic/NexusAccessor;
.super Ljava/lang/Object;
.source "NexusAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;,
        Lnet/bytebuddy/dynamic/NexusAccessor$InitializationAppender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;

.field private static final NO_QUEUE:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    nop

    .line 56
    sget-object v0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;

    sput-object v0, Lnet/bytebuddy/dynamic/NexusAccessor;->DISPATCHER:Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/dynamic/NexusAccessor;->NO_QUEUE:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    sget-object v0, Lnet/bytebuddy/dynamic/NexusAccessor;->NO_QUEUE:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/NexusAccessor;-><init>(Ljava/lang/ref/ReferenceQueue;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-Ljava/lang/ClassLoader;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lnet/bytebuddy/dynamic/NexusAccessor;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 86
    return-void
.end method

.method public static clean(Ljava/lang/ref/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p0, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Ljava/lang/ClassLoader;>;"
    sget-object v0, Lnet/bytebuddy/dynamic/NexusAccessor;->DISPATCHER:Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;

    invoke-interface {v0, p0}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;->clean(Ljava/lang/ref/Reference;)V

    .line 106
    return-void
.end method

.method public static isAlive()Z
    .locals 1

    .line 94
    sget-object v0, Lnet/bytebuddy/dynamic/NexusAccessor;->DISPATCHER:Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;->isAlive()Z

    move-result v0

    return v0
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/NexusAccessor;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    check-cast p1, Lnet/bytebuddy/dynamic/NexusAccessor;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/NexusAccessor;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    if-eqz p1, :cond_3

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/ref/ReferenceQueue;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_3
    if-eqz v2, :cond_5

    :cond_4
    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/NexusAccessor;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/NexusAccessor;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/ClassLoader;ILnet/bytebuddy/implementation/LoadedTypeInitializer;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "identification"    # I
    .param p4, "loadedTypeInitializer"    # Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    .line 117
    invoke-interface {p4}, Lnet/bytebuddy/implementation/LoadedTypeInitializer;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v1, Lnet/bytebuddy/dynamic/NexusAccessor;->DISPATCHER:Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/NexusAccessor;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;->register(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;ILnet/bytebuddy/implementation/LoadedTypeInitializer;)V

    .line 120
    :cond_0
    return-void
.end method
