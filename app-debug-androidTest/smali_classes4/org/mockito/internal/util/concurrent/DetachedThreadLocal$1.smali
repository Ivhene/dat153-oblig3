.class Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$1;
.super Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
.source "DetachedThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;-><init>(Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$Cleaner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
        "Ljava/lang/Thread;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;


# direct methods
.method constructor <init>(Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;
    .param p2, "cleanerThread"    # Z

    .line 23
    .local p0, "this":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$1;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$1;"
    iput-object p1, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$1;->this$0:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    invoke-direct {p0, p2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic defaultValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    .local p0, "this":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$1;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$1;"
    check-cast p1, Ljava/lang/Thread;

    invoke-virtual {p0, p1}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$1;->defaultValue(Ljava/lang/Thread;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected defaultValue(Ljava/lang/Thread;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            ")TT;"
        }
    .end annotation

    .line 26
    .local p0, "this":Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$1;, "Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$1;"
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal$1;->this$0:Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/DetachedThreadLocal;->initialValue(Ljava/lang/Thread;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
