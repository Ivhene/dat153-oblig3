.class Lorg/checkerframework/com/google/common/base/FinalizableReferenceQueue$SystemLoader;
.super Ljava/lang/Object;
.source "FinalizableReferenceQueue.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/FinalizableReferenceQueue$FinalizerLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/FinalizableReferenceQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemLoader"
.end annotation


# static fields
.field static disabled:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFinalizer()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 246
    sget-boolean v0, Lorg/checkerframework/com/google/common/base/FinalizableReferenceQueue$SystemLoader;->disabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 247
    return-object v1

    .line 251
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    .local v0, "systemLoader":Ljava/lang/ClassLoader;
    nop

    .line 256
    if-eqz v0, :cond_1

    .line 258
    :try_start_1
    const-string v2, "org.checkerframework.com.google.common.base.internal.Finalizer"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 259
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    return-object v1

    .line 264
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    return-object v1

    .line 252
    .end local v0    # "systemLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/checkerframework/com/google/common/base/FinalizableReferenceQueue;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "Not allowed to access system class loader."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 254
    return-object v1
.end method
