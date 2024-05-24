.class public final Lscenelib/annotations/el/AScene;
.super Ljava/lang/Object;
.source "AScene.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static checkClones:Z

.field private static checkVisitor:Lscenelib/annotations/el/ElementVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/el/ElementVisitor<",
            "Ljava/lang/Void;",
            "Lscenelib/annotations/el/AElement;",
            ">;"
        }
    .end annotation
.end field

.field public static debugFoundMap:Z


# instance fields
.field public final classes:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AClass;",
            ">;"
        }
    .end annotation
.end field

.field public final imports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final packages:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lscenelib/annotations/el/AScene;->checkClones:Z

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lscenelib/annotations/el/AScene;->debugFoundMap:Z

    .line 248
    new-instance v0, Lscenelib/annotations/el/AScene$2;

    invoke-direct {v0}, Lscenelib/annotations/el/AScene$2;-><init>()V

    sput-object v0, Lscenelib/annotations/el/AScene;->checkVisitor:Lscenelib/annotations/el/ElementVisitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    nop

    .line 56
    invoke-static {}, Lscenelib/annotations/el/AElement;->newVivifyingLHMap_AE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 66
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/el/AScene;->imports:Ljava/util/Map;

    .line 69
    new-instance v0, Lscenelib/annotations/el/AScene$1;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, p0, v1}, Lscenelib/annotations/el/AScene$1;-><init>(Lscenelib/annotations/el/AScene;Ljava/util/Map;)V

    iput-object v0, p0, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 88
    return-void
.end method

.method public constructor <init>(Lscenelib/annotations/el/AScene;)V
    .locals 5
    .param p1, "scene"    # Lscenelib/annotations/el/AScene;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    nop

    .line 56
    invoke-static {}, Lscenelib/annotations/el/AElement;->newVivifyingLHMap_AE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 66
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/el/AScene;->imports:Ljava/util/Map;

    .line 69
    new-instance v0, Lscenelib/annotations/el/AScene$1;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, p0, v1}, Lscenelib/annotations/el/AScene$1;-><init>(Lscenelib/annotations/el/AScene;Ljava/util/Map;)V

    iput-object v0, p0, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 94
    iget-object v0, p1, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p1, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/AElement;

    .line 96
    .local v2, "val":Lscenelib/annotations/el/AElement;
    iget-object v3, p0, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2}, Lscenelib/annotations/el/AElement;->clone()Lscenelib/annotations/el/AElement;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lscenelib/annotations/util/coll/VivifyingMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":Lscenelib/annotations/el/AElement;
    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/AScene;->imports:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v2, p1, Lscenelib/annotations/el/AScene;->imports:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 101
    .local v2, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 102
    .local v3, "copy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 103
    iget-object v4, p0, Lscenelib/annotations/el/AScene;->imports:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "copy":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 105
    :cond_1
    iget-object v0, p1, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v2, p1, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/AClass;

    .line 107
    .local v2, "clazz":Lscenelib/annotations/el/AClass;
    iget-object v3, p0, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2}, Lscenelib/annotations/el/AClass;->clone()Lscenelib/annotations/el/AClass;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lscenelib/annotations/util/coll/VivifyingMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "clazz":Lscenelib/annotations/el/AClass;
    goto :goto_2

    .line 109
    :cond_2
    sget-boolean v0, Lscenelib/annotations/el/AScene;->checkClones:Z

    if-eqz v0, :cond_3

    .line 110
    invoke-static {p0, p1}, Lscenelib/annotations/el/AScene;->checkClone(Lscenelib/annotations/el/AScene;Lscenelib/annotations/el/AScene;)V

    .line 112
    :cond_3
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 50
    invoke-static {}, Lscenelib/annotations/el/AScene;->cloneCheckFail()V

    return-void
.end method

.method public static checkClone(Lscenelib/annotations/el/AScene;Lscenelib/annotations/el/AScene;)V
    .locals 2
    .param p0, "s0"    # Lscenelib/annotations/el/AScene;
    .param p1, "s1"    # Lscenelib/annotations/el/AScene;

    .line 186
    if-nez p0, :cond_0

    .line 187
    if-eqz p1, :cond_3

    .line 188
    invoke-static {}, Lscenelib/annotations/el/AScene;->cloneCheckFail()V

    goto :goto_0

    .line 191
    :cond_0
    if-nez p1, :cond_1

    .line 192
    invoke-static {}, Lscenelib/annotations/el/AScene;->cloneCheckFail()V

    .line 194
    :cond_1
    invoke-virtual {p0}, Lscenelib/annotations/el/AScene;->prune()V

    .line 195
    invoke-virtual {p1}, Lscenelib/annotations/el/AScene;->prune()V

    .line 196
    if-ne p0, p1, :cond_2

    .line 197
    invoke-static {}, Lscenelib/annotations/el/AScene;->cloneCheckFail()V

    .line 199
    :cond_2
    iget-object v0, p0, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0, v1}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 200
    iget-object v0, p0, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0, v1}, Lscenelib/annotations/el/AScene;->checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 202
    :cond_3
    :goto_0
    return-void
.end method

.method public static checkElem(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)V
    .locals 1
    .param p0, "e0"    # Lscenelib/annotations/el/AElement;
    .param p1, "e1"    # Lscenelib/annotations/el/AElement;

    .line 224
    invoke-static {p0, p1}, Lscenelib/annotations/el/AScene;->checkObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    if-eqz p0, :cond_1

    .line 226
    if-ne p0, p1, :cond_0

    .line 227
    invoke-static {}, Lscenelib/annotations/el/AScene;->cloneCheckFail()V

    .line 229
    :cond_0
    sget-object v0, Lscenelib/annotations/el/AScene;->checkVisitor:Lscenelib/annotations/el/ElementVisitor;

    invoke-virtual {p0, v0, p1}, Lscenelib/annotations/el/AElement;->accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_1
    return-void
.end method

.method public static checkElems(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Lscenelib/annotations/el/AElement;",
            ">(",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "TK;TV;>;",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 206
    .local p0, "m0":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<TK;TV;>;"
    .local p1, "m1":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<TK;TV;>;"
    if-nez p0, :cond_0

    .line 207
    if-eqz p1, :cond_2

    .line 208
    invoke-static {}, Lscenelib/annotations/el/AScene;->cloneCheckFail()V

    goto :goto_1

    .line 210
    :cond_0
    if-nez p1, :cond_1

    .line 211
    invoke-static {}, Lscenelib/annotations/el/AScene;->cloneCheckFail()V

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {p0}, Lscenelib/annotations/util/coll/VivifyingMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 214
    .local v1, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p1, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AElement;

    invoke-static {v2, v3}, Lscenelib/annotations/el/AScene;->checkElem(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/AElement;)V

    .line 215
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 217
    :cond_2
    :goto_1
    return-void
.end method

.method public static checkObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "o0"    # Ljava/lang/Object;
    .param p1, "o1"    # Ljava/lang/Object;

    .line 238
    if-nez p0, :cond_0

    if-nez p1, :cond_1

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "clone check failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static cloneCheckFail()V
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "clone check failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "status":I
    const/4 v1, 0x1

    sput-boolean v1, Lscenelib/annotations/el/AScene;->checkClones:Z

    .line 358
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 359
    new-instance v2, Lscenelib/annotations/el/AScene;

    invoke-direct {v2}, Lscenelib/annotations/el/AScene;-><init>()V

    .line 360
    .local v2, "s0":Lscenelib/annotations/el/AScene;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 362
    :try_start_0
    aget-object v3, p0, v1

    invoke-static {v3, v2}, Lscenelib/annotations/io/IndexFileParser;->parseFile(Ljava/lang/String;Lscenelib/annotations/el/AScene;)Ljava/util/Map;

    .line 363
    invoke-virtual {v2}, Lscenelib/annotations/el/AScene;->clone()Lscenelib/annotations/el/AScene;

    .line 364
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "ok"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    goto :goto_1

    .line 365
    :catchall_0
    move-exception v3

    .line 366
    .local v3, "e":Ljava/lang/Throwable;
    const/4 v0, 0x1

    .line 367
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "failed"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 358
    .end local v2    # "s0":Lscenelib/annotations/el/AScene;
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 372
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lscenelib/annotations/el/AScene;->clone()Lscenelib/annotations/el/AScene;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscenelib/annotations/el/AScene;
    .locals 1

    .line 116
    new-instance v0, Lscenelib/annotations/el/AScene;

    invoke-direct {v0, p0}, Lscenelib/annotations/el/AScene;-><init>(Lscenelib/annotations/el/AScene;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 126
    instance-of v0, p1, Lscenelib/annotations/el/AScene;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/AScene;

    .line 127
    invoke-virtual {v0, p0}, Lscenelib/annotations/el/AScene;->equals(Lscenelib/annotations/el/AScene;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0
.end method

.method public equals(Lscenelib/annotations/el/AScene;)Z
    .locals 2
    .param p1, "o"    # Lscenelib/annotations/el/AScene;

    .line 136
    iget-object v0, p1, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p0, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p0, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 141
    iget-object v0, p0, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v0

    iget-object v1, p0, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prune()V
    .locals 1

    .line 155
    iget-object v0, p0, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 156
    iget-object v0, p0, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lscenelib/annotations/el/AScene;->unparse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unparse()Ljava/lang/String;
    .locals 6

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "packages:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v1, p0, Lscenelib/annotations/el/AScene;->packages:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "  "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 164
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AElement;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AElement;>;"
    goto :goto_0

    .line 166
    :cond_0
    const-string v1, "classes:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 168
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/AClass;

    const-string v5, "    "

    invoke-virtual {v4, v5}, Lscenelib/annotations/el/AClass;->unparse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lscenelib/annotations/el/AClass;>;"
    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
