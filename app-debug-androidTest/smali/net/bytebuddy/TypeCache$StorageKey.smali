.class public Lnet/bytebuddy/TypeCache$StorageKey;
.super Ljava/lang/ref/WeakReference;
.source "TypeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/TypeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StorageKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field private final hashCode:I


# direct methods
.method protected constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    .line 294
    .local p2, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-Ljava/lang/ClassLoader;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 295
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    .line 296
    return-void
.end method

.method static synthetic access$100(Lnet/bytebuddy/TypeCache$StorageKey;)I
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/TypeCache$StorageKey;

    .line 280
    iget v0, p0, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 306
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 307
    return v0

    .line 308
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/TypeCache$LookupKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 309
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/TypeCache$LookupKey;

    .line 310
    .local v1, "lookupKey":Lnet/bytebuddy/TypeCache$LookupKey;
    iget v3, p0, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    invoke-static {v1}, Lnet/bytebuddy/TypeCache$LookupKey;->access$200(Lnet/bytebuddy/TypeCache$LookupKey;)I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$StorageKey;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1}, Lnet/bytebuddy/TypeCache$LookupKey;->access$300(Lnet/bytebuddy/TypeCache$LookupKey;)Ljava/lang/ClassLoader;

    move-result-object v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 311
    .end local v1    # "lookupKey":Lnet/bytebuddy/TypeCache$LookupKey;
    :cond_2
    instance-of v1, p1, Lnet/bytebuddy/TypeCache$StorageKey;

    if-eqz v1, :cond_4

    .line 312
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/TypeCache$StorageKey;

    .line 313
    .local v1, "storageKey":Lnet/bytebuddy/TypeCache$StorageKey;
    iget v3, p0, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    iget v4, v1, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lnet/bytebuddy/TypeCache$StorageKey;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lnet/bytebuddy/TypeCache$StorageKey;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    .line 315
    .end local v1    # "storageKey":Lnet/bytebuddy/TypeCache$StorageKey;
    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 300
    iget v0, p0, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    return v0
.end method
