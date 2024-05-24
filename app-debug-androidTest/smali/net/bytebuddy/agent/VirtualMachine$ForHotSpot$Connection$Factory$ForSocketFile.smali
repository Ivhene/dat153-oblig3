.class public abstract Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForSocketFile"
.end annotation


# static fields
.field private static final ATTACH_FILE_PREFIX:Ljava/lang/String; = ".attach_pid"

.field private static final SOCKET_FILE_PREFIX:Ljava/lang/String; = ".java_pid"


# instance fields
.field private final attempts:I

.field private final pause:J

.field private final temporaryDirectory:Ljava/lang/String;

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method protected constructor <init>(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p1, "temporaryDirectory"    # Ljava/lang/String;
    .param p2, "attempts"    # I
    .param p3, "pause"    # J
    .param p5, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;->temporaryDirectory:Ljava/lang/String;

    .line 510
    iput p2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;->attempts:I

    .line 511
    iput-wide p3, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;->pause:J

    .line 512
    iput-object p5, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 513
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;
    .locals 8
    .param p1, "processId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    const-string v0, "Could not create attach file: "

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;->temporaryDirectory:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".java_pid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .local v1, "socket":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".attach_pid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "target":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cwd/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    .local v4, "attachFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "socket":Ljava/io/File;
    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "attachFile":Ljava/io/File;
    .end local p1    # "processId":Ljava/lang/String;
    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .restart local v1    # "socket":Ljava/io/File;
    .restart local v2    # "target":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "attachFile":Ljava/io/File;
    .restart local p1    # "processId":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 528
    :catch_0
    move-exception v5

    .line 529
    .local v5, "ignored":Ljava/io/IOException;
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;->temporaryDirectory:Ljava/lang/String;

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 530
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 531
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 535
    .end local v5    # "ignored":Ljava/io/IOException;
    :cond_3
    :goto_1
    const/4 v0, 0x3

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;->kill(Ljava/lang/String;I)V

    .line 536
    iget v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;->attempts:I

    .line 537
    .local v0, "attempts":I
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    add-int/lit8 v5, v0, -0x1

    .end local v0    # "attempts":I
    .local v5, "attempts":I
    if-lez v0, :cond_4

    .line 538
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, p0, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;->pause:J

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    move v0, v5

    goto :goto_2

    .line 537
    :cond_4
    move v0, v5

    .line 540
    .end local v5    # "attempts":I
    .restart local v0    # "attempts":I
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_6

    .line 547
    .end local v0    # "attempts":I
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_8

    .line 548
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    goto :goto_4

    .line 541
    .restart local v0    # "attempts":I
    :cond_6
    :try_start_2
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Target VM did not respond: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "socket":Ljava/io/File;
    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "attachFile":Ljava/io/File;
    .end local p1    # "processId":Ljava/lang/String;
    throw v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 547
    .end local v0    # "attempts":I
    .restart local v1    # "socket":Ljava/io/File;
    .restart local v2    # "target":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "attachFile":Ljava/io/File;
    .restart local p1    # "processId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 543
    :catch_1
    move-exception v0

    .line 544
    .local v0, "exception":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 545
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "socket":Ljava/io/File;
    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "attachFile":Ljava/io/File;
    .end local p1    # "processId":Ljava/lang/String;
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 547
    .end local v0    # "exception":Ljava/lang/InterruptedException;
    .restart local v1    # "socket":Ljava/io/File;
    .restart local v2    # "target":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "attachFile":Ljava/io/File;
    .restart local p1    # "processId":Ljava/lang/String;
    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_7

    .line 548
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    .line 550
    :cond_7
    throw v0

    .line 552
    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "attachFile":Ljava/io/File;
    :cond_8
    :goto_4
    invoke-virtual {p0, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection$Factory$ForSocketFile;->doConnect(Ljava/io/File;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;

    move-result-object v0

    return-object v0
.end method

.method protected abstract doConnect(Ljava/io/File;)Lnet/bytebuddy/agent/VirtualMachine$ForHotSpot$Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract kill(Ljava/lang/String;I)V
.end method
