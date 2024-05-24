.class Lcom/android/dx/dex/file/DebugInfoEncoder$2;
.super Ljava/lang/Object;
.source "DebugInfoEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/dex/file/DebugInfoEncoder;->extractMethodArguments()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/dx/dex/code/LocalList$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/dex/file/DebugInfoEncoder;


# direct methods
.method constructor <init>(Lcom/android/dx/dex/file/DebugInfoEncoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dx/dex/file/DebugInfoEncoder;

    .line 562
    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoEncoder$2;->this$0:Lcom/android/dx/dex/file/DebugInfoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/dx/dex/code/LocalList$Entry;Lcom/android/dx/dex/code/LocalList$Entry;)I
    .locals 2
    .param p1, "a"    # Lcom/android/dx/dex/code/LocalList$Entry;
    .param p2, "b"    # Lcom/android/dx/dex/code/LocalList$Entry;

    .line 565
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 562
    check-cast p1, Lcom/android/dx/dex/code/LocalList$Entry;

    check-cast p2, Lcom/android/dx/dex/code/LocalList$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/file/DebugInfoEncoder$2;->compare(Lcom/android/dx/dex/code/LocalList$Entry;Lcom/android/dx/dex/code/LocalList$Entry;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 570
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
