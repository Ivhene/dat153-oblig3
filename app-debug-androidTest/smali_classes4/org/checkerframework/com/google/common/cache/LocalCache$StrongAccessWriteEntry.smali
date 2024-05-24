.class final Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;
.super Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongAccessWriteEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile accessTime:J

.field nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile writeTime:J


# direct methods
.method constructor <init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 3
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1075
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongEntry;-><init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 1080
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->accessTime:J

    .line 1093
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1106
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1120
    iput-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->writeTime:J

    .line 1133
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1146
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/LocalCache;->nullEntry()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1076
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    .line 1084
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->accessTime:J

    return-wide v0
.end method

.method public getNextInAccessQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1097
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getNextInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1137
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInAccessQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1110
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInWriteQueue()Lorg/checkerframework/com/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1150
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .line 1124
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->writeTime:J

    return-wide v0
.end method

.method public setAccessTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 1089
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    iput-wide p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->accessTime:J

    .line 1090
    return-void
.end method

.method public setNextInAccessQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1102
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    .local p1, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1103
    return-void
.end method

.method public setNextInWriteQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1142
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    .local p1, "next":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->nextWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1143
    return-void
.end method

.method public setPreviousInAccessQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1115
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    .local p1, "previous":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousAccess:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1116
    return-void
.end method

.method public setPreviousInWriteQueue(Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1155
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    .local p1, "previous":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->previousWrite:Lorg/checkerframework/com/google/common/cache/ReferenceEntry;

    .line 1156
    return-void
.end method

.method public setWriteTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 1129
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;, "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry<TK;TV;>;"
    iput-wide p1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongAccessWriteEntry;->writeTime:J

    .line 1130
    return-void
.end method
