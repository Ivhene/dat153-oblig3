.class Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectClassFileConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field bytes:[B

.field dcff:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/android/dx/cf/direct/DirectClassFile;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/dx/command/dexer/Main;


# direct methods
.method private constructor <init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;[BLjava/util/concurrent/Future;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/concurrent/Future<",
            "Lcom/android/dx/cf/direct/DirectClassFile;",
            ">;)V"
        }
    .end annotation

    .line 1794
    .local p4, "dcff":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/android/dx/cf/direct/DirectClassFile;>;"
    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1795
    iput-object p2, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->name:Ljava/lang/String;

    .line 1796
    iput-object p3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->bytes:[B

    .line 1797
    iput-object p4, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->dcff:Ljava/util/concurrent/Future;

    .line 1798
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;[BLjava/util/concurrent/Future;Lcom/android/dx/command/dexer/Main$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dx/command/dexer/Main;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # [B
    .param p4, "x3"    # Ljava/util/concurrent/Future;
    .param p5, "x4"    # Lcom/android/dx/command/dexer/Main$1;

    .line 1787
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;-><init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;[BLjava/util/concurrent/Future;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;Lcom/android/dx/cf/direct/DirectClassFile;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;
    .param p1, "x1"    # Lcom/android/dx/cf/direct/DirectClassFile;

    .line 1787
    invoke-direct {p0, p1}, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->call(Lcom/android/dx/cf/direct/DirectClassFile;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private call(Lcom/android/dx/cf/direct/DirectClassFile;)Ljava/lang/Boolean;
    .locals 13
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;

    .line 1809
    const/4 v0, 0x0

    .line 1810
    .local v0, "maxMethodIdsInClass":I
    const/4 v1, 0x0

    .line 1812
    .local v1, "maxFieldIdsInClass":I
    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/android/dx/command/dexer/Main;->access$1400(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/Main$Arguments;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v2, :cond_4

    .line 1821
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/dx/rop/cst/ConstantPool;->size()I

    move-result v2

    .line 1822
    .local v2, "constantPoolSize":I
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/android/dx/cf/iface/MethodList;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/dx/cf/iface/MethodList;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x2

    .line 1824
    .end local v0    # "maxMethodIdsInClass":I
    .local v3, "maxMethodIdsInClass":I
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getFields()Lcom/android/dx/cf/iface/FieldList;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dx/cf/iface/FieldList;->size()I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v4, v0, 0x9

    .line 1826
    .end local v1    # "maxFieldIdsInClass":I
    .local v4, "maxFieldIdsInClass":I
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->access$1700(Lcom/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1831
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->access$1800(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/dex/file/DexFile;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1832
    :try_start_1
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v1}, Lcom/android/dx/command/dexer/Main;->access$1800(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/dex/file/DexFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/dex/file/MethodIdsSection;->items()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1833
    .local v1, "numMethodIds":I
    iget-object v6, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v6}, Lcom/android/dx/command/dexer/Main;->access$1800(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/dex/file/DexFile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/dex/file/FieldIdsSection;->items()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    .line 1834
    .local v6, "numFieldIds":I
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1837
    :goto_0
    add-int v0, v1, v3

    :try_start_2
    iget-object v7, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v7}, Lcom/android/dx/command/dexer/Main;->access$1900(Lcom/android/dx/command/dexer/Main;)I

    move-result v7

    add-int/2addr v0, v7

    iget-object v7, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    .line 1838
    invoke-static {v7}, Lcom/android/dx/command/dexer/Main;->access$1400(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/Main$Arguments;

    move-result-object v7

    iget v7, v7, Lcom/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    if-gt v0, v7, :cond_0

    add-int v0, v6, v4

    iget-object v7, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    .line 1839
    invoke-static {v7}, Lcom/android/dx/command/dexer/Main;->access$2000(Lcom/android/dx/command/dexer/Main;)I

    move-result v7

    add-int/2addr v0, v7

    iget-object v7, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    .line 1840
    invoke-static {v7}, Lcom/android/dx/command/dexer/Main;->access$1400(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/command/dexer/Main$Arguments;

    move-result-object v7

    iget v7, v7, Lcom/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    if-le v0, v7, :cond_2

    .line 1842
    :cond_0
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->access$1900(Lcom/android/dx/command/dexer/Main;)I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->access$2000(Lcom/android/dx/command/dexer/Main;)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    .line 1851
    :cond_1
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->access$1800(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/dex/file/DexFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/file/DexFile;->getClassDefs()Lcom/android/dx/dex/file/ClassDefsSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/file/ClassDefsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1854
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->access$2100(Lcom/android/dx/command/dexer/Main;)V

    goto :goto_3

    .line 1868
    :cond_2
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->access$1900(Lcom/android/dx/command/dexer/Main;)I

    move-result v7

    add-int/2addr v7, v3

    invoke-static {v0, v7}, Lcom/android/dx/command/dexer/Main;->access$1902(Lcom/android/dx/command/dexer/Main;I)I

    .line 1869
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->access$2000(Lcom/android/dx/command/dexer/Main;)I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v0, v7}, Lcom/android/dx/command/dexer/Main;->access$2002(Lcom/android/dx/command/dexer/Main;I)I

    .line 1870
    nop

    .end local v1    # "numMethodIds":I
    .end local v6    # "numFieldIds":I
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v0, v3

    move v1, v4

    goto :goto_4

    .line 1847
    .restart local v1    # "numMethodIds":I
    .restart local v6    # "numFieldIds":I
    :cond_3
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->access$1700(Lcom/android/dx/command/dexer/Main;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 1848
    :catch_0
    move-exception v0

    .line 1850
    :goto_2
    nop

    .line 1861
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->access$1800(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/dex/file/DexFile;

    move-result-object v0

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1862
    :try_start_5
    iget-object v7, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v7}, Lcom/android/dx/command/dexer/Main;->access$1800(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/dex/file/DexFile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dx/dex/file/DexFile;->getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dx/dex/file/MethodIdsSection;->items()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    move v1, v7

    .line 1863
    iget-object v7, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v7}, Lcom/android/dx/command/dexer/Main;->access$1800(Lcom/android/dx/command/dexer/Main;)Lcom/android/dx/dex/file/DexFile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dx/dex/file/FieldIdsSection;->items()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    move v6, v7

    .line 1864
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v2    # "constantPoolSize":I
    .end local v3    # "maxMethodIdsInClass":I
    .end local v4    # "maxFieldIdsInClass":I
    .end local p1    # "cf":Lcom/android/dx/cf/direct/DirectClassFile;
    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1834
    .end local v1    # "numMethodIds":I
    .end local v6    # "numFieldIds":I
    .restart local v2    # "constantPoolSize":I
    .restart local v3    # "maxMethodIdsInClass":I
    .restart local v4    # "maxFieldIdsInClass":I
    .restart local p1    # "cf":Lcom/android/dx/cf/direct/DirectClassFile;
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v2    # "constantPoolSize":I
    .end local v3    # "maxMethodIdsInClass":I
    .end local v4    # "maxFieldIdsInClass":I
    .end local p1    # "cf":Lcom/android/dx/cf/direct/DirectClassFile;
    :try_start_8
    throw v1

    .line 1870
    .restart local v2    # "constantPoolSize":I
    .restart local v3    # "maxMethodIdsInClass":I
    .restart local v4    # "maxFieldIdsInClass":I
    .restart local p1    # "cf":Lcom/android/dx/cf/direct/DirectClassFile;
    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 1874
    .end local v2    # "constantPoolSize":I
    .end local v3    # "maxMethodIdsInClass":I
    .end local v4    # "maxFieldIdsInClass":I
    .restart local v0    # "maxMethodIdsInClass":I
    .local v1, "maxFieldIdsInClass":I
    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v2}, Lcom/android/dx/command/dexer/Main;->access$2300(Lcom/android/dx/command/dexer/Main;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v9, Lcom/android/dx/command/dexer/Main$ClassTranslatorTask;

    iget-object v4, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    iget-object v5, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->bytes:[B

    const/4 v8, 0x0

    move-object v3, v9

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/dx/command/dexer/Main$ClassTranslatorTask;-><init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;[BLcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/command/dexer/Main$1;)V

    invoke-interface {v2, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 1876
    .local v2, "cdif":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/android/dx/dex/file/ClassDefItem;>;"
    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v3}, Lcom/android/dx/command/dexer/Main;->access$2500(Lcom/android/dx/command/dexer/Main;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;

    iget-object v7, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    iget-object v8, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->name:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v6, v4

    move-object v9, v2

    move v10, v0

    move v11, v1

    invoke-direct/range {v6 .. v12}, Lcom/android/dx/command/dexer/Main$ClassDefItemConsumer;-><init>(Lcom/android/dx/command/dexer/Main;Ljava/lang/String;Ljava/util/concurrent/Future;IILcom/android/dx/command/dexer/Main$1;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 1878
    .local v3, "res":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    iget-object v4, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-static {v4}, Lcom/android/dx/command/dexer/Main;->access$2600(Lcom/android/dx/command/dexer/Main;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1880
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1803
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->dcff:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/cf/direct/DirectClassFile;

    .line 1804
    .local v0, "cf":Lcom/android/dx/cf/direct/DirectClassFile;
    invoke-direct {p0, v0}, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->call(Lcom/android/dx/cf/direct/DirectClassFile;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1787
    invoke-virtual {p0}, Lcom/android/dx/command/dexer/Main$DirectClassFileConsumer;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
