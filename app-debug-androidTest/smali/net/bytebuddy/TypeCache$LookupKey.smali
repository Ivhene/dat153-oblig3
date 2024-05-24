.class public Lnet/bytebuddy/TypeCache$LookupKey;
.super Ljava/lang/Object;
.source "TypeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/TypeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LookupKey"
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final hashCode:I


# direct methods
.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lnet/bytebuddy/TypeCache$LookupKey;->classLoader:Ljava/lang/ClassLoader;

    .line 253
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/TypeCache$LookupKey;->hashCode:I

    .line 254
    return-void
.end method

.method static synthetic access$200(Lnet/bytebuddy/TypeCache$LookupKey;)I
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/TypeCache$LookupKey;

    .line 234
    iget v0, p0, Lnet/bytebuddy/TypeCache$LookupKey;->hashCode:I

    return v0
.end method

.method static synthetic access$300(Lnet/bytebuddy/TypeCache$LookupKey;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/TypeCache$LookupKey;

    .line 234
    iget-object v0, p0, Lnet/bytebuddy/TypeCache$LookupKey;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 264
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 265
    return v0

    .line 266
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/TypeCache$LookupKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 267
    iget-object v1, p0, Lnet/bytebuddy/TypeCache$LookupKey;->classLoader:Ljava/lang/ClassLoader;

    move-object v3, p1

    check-cast v3, Lnet/bytebuddy/TypeCache$LookupKey;

    iget-object v3, v3, Lnet/bytebuddy/TypeCache$LookupKey;->classLoader:Ljava/lang/ClassLoader;

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 268
    :cond_2
    instance-of v1, p1, Lnet/bytebuddy/TypeCache$StorageKey;

    if-eqz v1, :cond_4

    .line 269
    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/TypeCache$StorageKey;

    .line 270
    .local v1, "storageKey":Lnet/bytebuddy/TypeCache$StorageKey;
    iget v3, p0, Lnet/bytebuddy/TypeCache$LookupKey;->hashCode:I

    invoke-static {v1}, Lnet/bytebuddy/TypeCache$StorageKey;->access$100(Lnet/bytebuddy/TypeCache$StorageKey;)I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lnet/bytebuddy/TypeCache$LookupKey;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1}, Lnet/bytebuddy/TypeCache$StorageKey;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    .line 272
    .end local v1    # "storageKey":Lnet/bytebuddy/TypeCache$StorageKey;
    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 258
    iget v0, p0, Lnet/bytebuddy/TypeCache$LookupKey;->hashCode:I

    return v0
.end method
