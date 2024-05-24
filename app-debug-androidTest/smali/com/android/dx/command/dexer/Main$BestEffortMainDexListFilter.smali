.class Lcom/android/dx/command/dexer/Main$BestEffortMainDexListFilter;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lcom/android/dx/cf/direct/ClassPathOpener$FileNameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BestEffortMainDexListFilter"
.end annotation


# instance fields
.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/dx/command/dexer/Main;


# direct methods
.method public constructor <init>(Lcom/android/dx/command/dexer/Main;)V
    .locals 6

    .line 1200
    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->this$0:Lcom/android/dx/command/dexer/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->map:Ljava/util/Map;

    .line 1201
    invoke-static {p1}, Lcom/android/dx/command/dexer/Main;->access$1000(Lcom/android/dx/command/dexer/Main;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1202
    .local v0, "pathOfClass":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/dx/command/dexer/Main;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1203
    .local v1, "normalized":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1204
    .local v2, "simple":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->map:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1205
    .local v3, "fullPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 1206
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v4

    .line 1207
    iget-object v4, p0, Lcom/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->map:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    .end local v0    # "pathOfClass":Ljava/lang/String;
    .end local v1    # "normalized":Ljava/lang/String;
    .end local v2    # "simple":Ljava/lang/String;
    .end local v3    # "fullPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 1211
    :cond_1
    return-void
.end method

.method private getSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 1233
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1234
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1235
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1237
    :cond_0
    return-object p1
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .line 1215
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1216
    invoke-static {p1}, Lcom/android/dx/command/dexer/Main;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1217
    .local v0, "normalized":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1218
    .local v2, "simple":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$BestEffortMainDexListFilter;->map:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1219
    .local v3, "fullPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 1220
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1221
    .local v5, "fullPath":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1222
    return v1

    .line 1224
    .end local v5    # "fullPath":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1226
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 1228
    .end local v0    # "normalized":Ljava/lang/String;
    .end local v2    # "simple":Ljava/lang/String;
    .end local v3    # "fullPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return v1
.end method
