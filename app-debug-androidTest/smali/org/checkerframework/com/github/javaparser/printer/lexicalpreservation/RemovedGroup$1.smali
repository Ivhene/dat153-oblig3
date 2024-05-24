.class Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;
.super Ljava/lang/Object;
.source "RemovedGroup.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;",
        ">;"
    }
.end annotation


# instance fields
.field private currentIndex:I

.field final synthetic this$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->this$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->currentIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 217
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->currentIndex:I

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->this$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->access$000(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->this$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->access$000(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->next()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;
    .locals 3

    .line 222
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->this$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->access$000(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/Removed;

    return-object v0
.end method
