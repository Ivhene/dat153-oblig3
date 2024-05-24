.class public Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$WeaklyReferenced;
.super Ljava/lang/ref/WeakReference;
.source "ClassFileLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeaklyReferenced"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/ClassLoader;",
        ">;",
        "Lnet/bytebuddy/dynamic/ClassFileLocator;"
    }
.end annotation


# instance fields
.field private final hashCode:I


# direct methods
.method protected constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 491
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 492
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$WeaklyReferenced;->hashCode:I

    .line 493
    return-void
.end method

.method public static of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 506
    if-eqz p0, :cond_1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 507
    :cond_0
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$WeaklyReferenced;

    invoke-direct {v0, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$WeaklyReferenced;-><init>(Ljava/lang/ClassLoader;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    .line 506
    :goto_1
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 526
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 535
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 536
    return v0

    .line 537
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 540
    :cond_1
    move-object v2, p1

    check-cast v2, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$WeaklyReferenced;

    .line 541
    .local v2, "weaklyReferenced":Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$WeaklyReferenced;
    invoke-virtual {v2}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$WeaklyReferenced;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    .line 542
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$WeaklyReferenced;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 538
    .end local v2    # "weaklyReferenced":Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$WeaklyReferenced;
    .end local v3    # "classLoader":Ljava/lang/ClassLoader;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 530
    iget v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$WeaklyReferenced;->hashCode:I

    return v0
.end method

.method public locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$WeaklyReferenced;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 516
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    new-instance v1, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;

    invoke-direct {v1, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_0
    invoke-static {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->locate(Ljava/lang/ClassLoader;Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object v1

    .line 516
    :goto_0
    return-object v1
.end method
