.class Lorg/checkerframework/com/google/common/base/Joiner$2;
.super Lorg/checkerframework/com/google/common/base/Joiner;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/base/Joiner;->skipNulls()Lorg/checkerframework/com/google/common/base/Joiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/base/Joiner;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/Joiner;Lorg/checkerframework/com/google/common/base/Joiner;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/base/Joiner;
    .param p2, "prototype"    # Lorg/checkerframework/com/google/common/base/Joiner;

    .line 243
    iput-object p1, p0, Lorg/checkerframework/com/google/common/base/Joiner$2;->this$0:Lorg/checkerframework/com/google/common/base/Joiner;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/com/google/common/base/Joiner;-><init>(Lorg/checkerframework/com/google/common/base/Joiner;Lorg/checkerframework/com/google/common/base/Joiner$1;)V

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Iterator<",
            "*>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    .local p1, "appendable":Ljava/lang/Appendable;, "TA;"
    .local p2, "parts":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const-string v0, "appendable"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v0, "parts"

    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 250
    .local v0, "part":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Joiner$2;->this$0:Lorg/checkerframework/com/google/common/base/Joiner;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 252
    goto :goto_1

    .line 254
    .end local v0    # "part":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 255
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 257
    .restart local v0    # "part":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 258
    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Joiner$2;->this$0:Lorg/checkerframework/com/google/common/base/Joiner;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/base/Joiner;->access$100(Lorg/checkerframework/com/google/common/base/Joiner;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 259
    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Joiner$2;->this$0:Lorg/checkerframework/com/google/common/base/Joiner;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 261
    .end local v0    # "part":Ljava/lang/Object;
    :cond_2
    goto :goto_1

    .line 262
    :cond_3
    return-object p1
.end method

.method public useForNull(Ljava/lang/String;)Lorg/checkerframework/com/google/common/base/Joiner;
    .locals 2
    .param p1, "nullText"    # Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified skipNulls"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withKeyValueSeparator(Ljava/lang/String;)Lorg/checkerframework/com/google/common/base/Joiner$MapJoiner;
    .locals 2
    .param p1, "kvs"    # Ljava/lang/String;

    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t use .skipNulls() with maps"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
