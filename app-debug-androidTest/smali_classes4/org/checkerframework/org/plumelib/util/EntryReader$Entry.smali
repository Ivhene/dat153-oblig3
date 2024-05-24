.class public Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;
.super Ljava/lang/Object;
.source "EntryReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/EntryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public final body:Ljava/lang/String;

.field public final filename:Ljava/lang/String;

.field public final firstLine:Ljava/lang/String;

.field public final lineNumber:J

.field public final shortEntry:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0
    .param p1, "firstLine"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "lineNumber"    # J
    .param p6, "shortEntry"    # Z

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;->firstLine:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;->body:Ljava/lang/String;

    .line 174
    iput-object p3, p0, Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;->filename:Ljava/lang/String;

    .line 175
    iput-wide p4, p0, Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;->lineNumber:J

    .line 176
    iput-boolean p6, p0, Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;->shortEntry:Z

    .line 177
    return-void
.end method


# virtual methods
.method public getDescription(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 2
    .param p1, "re"    # Ljava/util/regex/Pattern;

    .line 188
    if-nez p1, :cond_0

    .line 189
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;->firstLine:Ljava/lang/String;

    return-object v0

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 193
    .local v0, "descr":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 196
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/EntryReader$Entry;->firstLine:Ljava/lang/String;

    return-object v1
.end method
