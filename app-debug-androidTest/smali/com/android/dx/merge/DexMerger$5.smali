.class Lcom/android/dx/merge/DexMerger$5;
.super Lcom/android/dx/merge/DexMerger$IdMerger;
.source "DexMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/merge/DexMerger;->mergeCallSiteIds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/merge/DexMerger$IdMerger<",
        "Lcom/android/dex/CallSiteId;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/merge/DexMerger;


# direct methods
.method constructor <init>(Lcom/android/dx/merge/DexMerger;Lcom/android/dex/Dex$Section;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dx/merge/DexMerger;
    .param p2, "out"    # Lcom/android/dex/Dex$Section;

    .line 482
    iput-object p1, p0, Lcom/android/dx/merge/DexMerger$5;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-direct {p0, p1, p2}, Lcom/android/dx/merge/DexMerger$IdMerger;-><init>(Lcom/android/dx/merge/DexMerger;Lcom/android/dex/Dex$Section;)V

    return-void
.end method


# virtual methods
.method getSection(Lcom/android/dex/TableOfContents;)Lcom/android/dex/TableOfContents$Section;
    .locals 1
    .param p1, "tableOfContents"    # Lcom/android/dex/TableOfContents;

    .line 485
    iget-object v0, p1, Lcom/android/dex/TableOfContents;->callSiteIds:Lcom/android/dex/TableOfContents$Section;

    return-object v0
.end method

.method read(Lcom/android/dex/Dex$Section;Lcom/android/dx/merge/IndexMap;I)Lcom/android/dex/CallSiteId;
    .locals 1
    .param p1, "in"    # Lcom/android/dex/Dex$Section;
    .param p2, "indexMap"    # Lcom/android/dx/merge/IndexMap;
    .param p3, "index"    # I

    .line 490
    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readCallSiteId()Lcom/android/dex/CallSiteId;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/dx/merge/IndexMap;->adjust(Lcom/android/dex/CallSiteId;)Lcom/android/dex/CallSiteId;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic read(Lcom/android/dex/Dex$Section;Lcom/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;
    .locals 0

    .line 482
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dx/merge/DexMerger$5;->read(Lcom/android/dex/Dex$Section;Lcom/android/dx/merge/IndexMap;I)Lcom/android/dex/CallSiteId;

    move-result-object p1

    return-object p1
.end method

.method updateIndex(ILcom/android/dx/merge/IndexMap;II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "indexMap"    # Lcom/android/dx/merge/IndexMap;
    .param p3, "oldIndex"    # I
    .param p4, "newIndex"    # I

    .line 495
    iget-object v0, p2, Lcom/android/dx/merge/IndexMap;->callSiteIds:[I

    aput p4, v0, p3

    .line 496
    return-void
.end method

.method write(Lcom/android/dex/CallSiteId;)V
    .locals 1
    .param p1, "value"    # Lcom/android/dex/CallSiteId;

    .line 500
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger$5;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger;->access$1700(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dex/CallSiteId;->writeTo(Lcom/android/dex/Dex$Section;)V

    .line 501
    return-void
.end method

.method bridge synthetic write(Ljava/lang/Comparable;)V
    .locals 0

    .line 482
    check-cast p1, Lcom/android/dex/CallSiteId;

    invoke-virtual {p0, p1}, Lcom/android/dx/merge/DexMerger$5;->write(Lcom/android/dex/CallSiteId;)V

    return-void
.end method
