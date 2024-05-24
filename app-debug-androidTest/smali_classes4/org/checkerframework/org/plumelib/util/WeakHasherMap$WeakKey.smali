.class final Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;
.super Ljava/lang/ref/WeakReference;
.source "WeakHasherMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WeakKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private hash:I

.field final synthetic this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;


# direct methods
.method private constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;"
    .local p2, "k":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;->this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 149
    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 150
    invoke-static {p1, p2}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->access$200(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;->hash:I

    .line 151
    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TK;>;)V"
        }
    .end annotation

    .line 158
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;"
    .local p2, "k":Ljava/lang/Object;, "TK;"
    .local p3, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TK;>;"
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;->this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    .line 159
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 160
    invoke-static {p1, p2}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->access$200(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;->hash:I

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/checkerframework/org/plumelib/util/WeakHasherMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/ref/ReferenceQueue;
    .param p4, "x3"    # Lorg/checkerframework/org/plumelib/util/WeakHasherMap$1;

    .line 144
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;-><init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;Lorg/checkerframework/org/plumelib/util/WeakHasherMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/util/WeakHasherMap;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/checkerframework/org/plumelib/util/WeakHasherMap$1;

    .line 144
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;-><init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;)V

    return-void
.end method

.method private create(Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "TK;TV;>.WeakKey;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;->this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;-><init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method private create(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TK;>;)",
            "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<",
            "TK;TV;>.WeakKey;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TK;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_0
    new-instance v0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;->this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-direct {v0, v1, p1, p2}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;-><init>(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 173
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 174
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 178
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 179
    :cond_2
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object v2

    .line 181
    .local v2, "t":Ljava/lang/Object;
    move-object v3, p1

    check-cast v3, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;

    invoke-virtual {v3}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object v3

    .line 182
    .local v3, "u":Ljava/lang/Object;
    if-eqz v2, :cond_5

    if-nez v3, :cond_3

    goto :goto_0

    .line 183
    :cond_3
    if-ne v2, v3, :cond_4

    return v1

    .line 184
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;->this$0:Lorg/checkerframework/org/plumelib/util/WeakHasherMap;

    invoke-static {v0, v2, v3}, Lorg/checkerframework/org/plumelib/util/WeakHasherMap;->access$300(Lorg/checkerframework/org/plumelib/util/WeakHasherMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 182
    :cond_5
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 190
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;, "Lorg/checkerframework/org/plumelib/util/WeakHasherMap<TK;TV;>.WeakKey;"
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/WeakHasherMap$WeakKey;->hash:I

    return v0
.end method
