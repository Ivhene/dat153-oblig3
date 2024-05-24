.class public Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJnaPosixEnvironment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;
    }
.end annotation


# instance fields
.field private final attempts:I

.field private final library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;

.field private final pause:J

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "attempts"    # I
    .param p2, "pause"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 2009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2010
    iput p1, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;->attempts:I

    .line 2011
    iput-wide p2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;->pause:J

    .line 2012
    iput-object p4, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 2013
    const-string v0, "c"

    const-class v1, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;

    iput-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;

    .line 2014
    return-void
.end method

.method private notifySemaphore(Ljava/io/File;Ljava/lang/String;ISSZ)V
    .locals 5
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "operation"    # S
    .param p5, "flags"    # S
    .param p6, "acceptUnavailable"    # Z

    .line 2117
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;->ftok(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x1b6

    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;->semget(III)I

    move-result v0

    .line 2118
    .local v0, "semaphore":I
    new-instance v1, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary$SemaphoreOperation;

    invoke-direct {v1}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary$SemaphoreOperation;-><init>()V

    .line 2119
    .local v1, "target":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary$SemaphoreOperation;
    iput-short p4, v1, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary$SemaphoreOperation;->operation:S

    .line 2120
    iput-short p5, v1, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary$SemaphoreOperation;->flags:S

    .line 2122
    :goto_0
    add-int/lit8 v2, p3, -0x1

    .end local p3    # "count":I
    .local v2, "count":I
    if-lez p3, :cond_2

    .line 2124
    :try_start_0
    iget-object p3, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;

    const/4 v3, 0x1

    invoke-interface {p3, v0, v1, v3}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;->semop(ILnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary$SemaphoreOperation;I)I
    :try_end_0
    .catch Lcom/sun/jna/LastErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2132
    move p3, v2

    goto :goto_0

    .line 2135
    :catchall_0
    move-exception p3

    goto :goto_1

    .line 2125
    :catch_0
    move-exception p3

    .line 2126
    .local p3, "exception":Lcom/sun/jna/LastErrorException;
    if-eqz p6, :cond_1

    :try_start_1
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    .line 2127
    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_1

    .line 2128
    :cond_0
    goto :goto_2

    .line 2130
    :cond_1
    nop

    .end local v0    # "semaphore":I
    .end local v1    # "target":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary$SemaphoreOperation;
    .end local v2    # "count":I
    .end local p1    # "directory":Ljava/io/File;
    .end local p2    # "name":Ljava/lang/String;
    .end local p4    # "operation":S
    .end local p5    # "flags":S
    .end local p6    # "acceptUnavailable":Z
    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2135
    .end local p3    # "exception":Lcom/sun/jna/LastErrorException;
    .restart local v0    # "semaphore":I
    .restart local v1    # "target":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary$SemaphoreOperation;
    .restart local v2    # "count":I
    .restart local p1    # "directory":Ljava/io/File;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p4    # "operation":S
    .restart local p5    # "flags":S
    .restart local p6    # "acceptUnavailable":Z
    :goto_1
    const/4 v1, 0x0

    .line 2136
    throw p3

    .line 2135
    :cond_2
    :goto_2
    const/4 p3, 0x0

    .line 2136
    .end local v1    # "target":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary$SemaphoreOperation;
    .local p3, "target":Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary$SemaphoreOperation;
    nop

    .line 2137
    return-void
.end method


# virtual methods
.method public decrementSemaphore(Ljava/io/File;Ljava/lang/String;ZI)V
    .locals 7
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "global"    # Z
    .param p4, "count"    # I

    .line 2102
    const/4 v4, -0x1

    const/16 v5, 0x1800

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;->notifySemaphore(Ljava/io/File;Ljava/lang/String;ISSZ)V

    .line 2103
    return-void
.end method

.method public getOwnerIdOf(Ljava/io/File;)I
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    .line 2053
    :try_start_0
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-f"

    goto :goto_0

    :cond_0
    const-string v0, "-c"

    .line 2054
    .local v0, "statUserSwitch":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " %u "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 2055
    .local v1, "process":Ljava/lang/Process;
    iget v2, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;->attempts:I

    .line 2056
    .local v2, "attempts":I
    const/4 v3, 0x0

    .line 2057
    .local v3, "exited":Z
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2060
    .local v4, "line":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v5

    if-nez v5, :cond_2

    .line 2063
    const/4 v3, 0x1

    .line 2064
    goto :goto_1

    .line 2061
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Error while executing stat"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "statUserSwitch":Ljava/lang/String;
    .end local v1    # "process":Ljava/lang/Process;
    .end local v2    # "attempts":I
    .end local v3    # "exited":Z
    .end local v4    # "line":Ljava/lang/String;
    .end local p1    # "file":Ljava/io/File;
    throw v5
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2065
    .restart local v0    # "statUserSwitch":Ljava/lang/String;
    .restart local v1    # "process":Ljava/lang/Process;
    .restart local v2    # "attempts":I
    .restart local v3    # "exited":Z
    .restart local v4    # "line":Ljava/lang/String;
    .restart local p1    # "file":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 2067
    .local v5, "ignored":Ljava/lang/IllegalThreadStateException;
    :try_start_2
    iget-object v6, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v7, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;->pause:J

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2071
    nop

    .line 2073
    .end local v5    # "ignored":Ljava/lang/IllegalThreadStateException;
    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_1

    .line 2074
    :goto_1
    if-eqz v3, :cond_3

    .line 2078
    :try_start_3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    return v5

    .line 2075
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 2076
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Command for stat did not exit in time"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "file":Ljava/io/File;
    throw v5

    .line 2068
    .restart local v5    # "ignored":Ljava/lang/IllegalThreadStateException;
    .restart local p1    # "file":Ljava/io/File;
    :catch_1
    move-exception v6

    .line 2069
    .local v6, "exception":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 2070
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "file":Ljava/io/File;
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2079
    .end local v0    # "statUserSwitch":Ljava/lang/String;
    .end local v1    # "process":Ljava/lang/Process;
    .end local v2    # "attempts":I
    .end local v3    # "exited":Z
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "ignored":Ljava/lang/IllegalThreadStateException;
    .end local v6    # "exception":Ljava/lang/InterruptedException;
    .restart local p1    # "file":Ljava/io/File;
    :catch_2
    move-exception v0

    .line 2080
    .local v0, "exception":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to execute stat command"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTemporaryFolder()Ljava/lang/String;
    .locals 2

    .line 2020
    const-string v0, "TMPDIR"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2021
    .local v0, "temporaryFolder":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "/tmp"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public incrementSemaphore(Ljava/io/File;Ljava/lang/String;ZI)V
    .locals 7
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "global"    # Z
    .param p4, "count"    # I

    .line 2095
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;->notifySemaphore(Ljava/io/File;Ljava/lang/String;ISSZ)V

    .line 2096
    return-void
.end method

.method public isExistingProcess(I)Z
    .locals 3
    .param p1, "processId"    # I

    .line 2042
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;->kill(II)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public pid()I
    .locals 1

    .line 2028
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;

    invoke-interface {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;->getpid()I

    move-result v0

    return v0
.end method

.method public setPermissions(Ljava/io/File;I)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "permissions"    # I

    .line 2088
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;->chmod(Ljava/lang/String;I)I

    .line 2089
    return-void
.end method

.method public userId()I
    .locals 1

    .line 2035
    iget-object v0, p0, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment;->library:Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;

    invoke-interface {v0}, Lnet/bytebuddy/agent/VirtualMachine$ForOpenJ9$Dispatcher$ForJnaPosixEnvironment$PosixLibrary;->getuid()I

    move-result v0

    return v0
.end method
