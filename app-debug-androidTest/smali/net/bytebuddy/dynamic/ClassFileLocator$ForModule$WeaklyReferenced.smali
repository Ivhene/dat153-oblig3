.class public Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;
.super Ljava/lang/ref/WeakReference;
.source "ClassFileLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeaklyReferenced"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lnet/bytebuddy/dynamic/ClassFileLocator;"
    }
.end annotation


# instance fields
.field private final hashCode:I


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "module"    # Ljava/lang/Object;

    .line 673
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 674
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;->hashCode:I

    .line 675
    return-void
.end method

.method public static of(Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 2
    .param p0, "module"    # Lnet/bytebuddy/utility/JavaModule;

    .line 685
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaModule;->isNamed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 686
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaModule;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaModule;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaModule;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;

    .line 688
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 686
    :cond_1
    :goto_0
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule;

    invoke-direct {v0, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule;-><init>(Lnet/bytebuddy/utility/JavaModule;)V

    :goto_1
    return-object v0

    .line 690
    :cond_2
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaModule;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader$WeaklyReferenced;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 709
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 722
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 723
    return v0

    .line 724
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 727
    :cond_1
    move-object v2, p1

    check-cast v2, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;

    .line 728
    .local v2, "weaklyReferenced":Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;
    invoke-virtual {v2}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;->get()Ljava/lang/Object;

    move-result-object v3

    .line 729
    .local v3, "module":Ljava/lang/Object;
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 725
    .end local v2    # "weaklyReferenced":Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;
    .end local v3    # "module":Ljava/lang/Object;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 715
    iget v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;->hashCode:I

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

    .line 698
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule$WeaklyReferenced;->get()Ljava/lang/Object;

    move-result-object v0

    .line 699
    .local v0, "module":Ljava/lang/Object;
    if-nez v0, :cond_0

    new-instance v1, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;

    invoke-direct {v1, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 701
    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/utility/JavaModule;->of(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v1

    invoke-static {v1, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForModule;->locate(Lnet/bytebuddy/utility/JavaModule;Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object v1

    .line 699
    :goto_0
    return-object v1
.end method
