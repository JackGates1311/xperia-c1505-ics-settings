.class Lcom/google/common/collect/MapMaker$SoftEntry;
.super Lcom/google/common/base/FinalizableSoftReference;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/MapMaker$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/FinalizableSoftReference",
        "<TK;>;",
        "Lcom/google/common/collect/MapMaker$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile valueReference:Lcom/google/common/collect/MapMaker$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V
    .locals 1
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;TK;I)V"
        }
    .end annotation

    .prologue
    .line 938
    .local p0, "this":Lcom/google/common/collect/MapMaker$SoftEntry;, "Lcom/google/common/collect/MapMaker$SoftEntry<TK;TV;>;"
    .local p1, "internals":Lcom/google/common/collect/CustomConcurrentHashMap$Internals;, "Lcom/google/common/collect/CustomConcurrentHashMap$Internals<TK;TV;Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    sget-object v0, Lcom/google/common/collect/MapMaker$QueueHolder;->queue:Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/FinalizableSoftReference;-><init>(Ljava/lang/Object;Lcom/google/common/base/FinalizableReferenceQueue;)V

    .line 955
    invoke-static {}, Lcom/google/common/collect/MapMaker;->access$600()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$SoftEntry;->valueReference:Lcom/google/common/collect/MapMaker$ValueReference;

    .line 939
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$SoftEntry;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    .line 940
    iput p3, p0, Lcom/google/common/collect/MapMaker$SoftEntry;->hash:I

    .line 941
    return-void
.end method


# virtual methods
.method public finalizeReferent()V
    .locals 1

    .prologue
    .line 948
    .local p0, "this":Lcom/google/common/collect/MapMaker$SoftEntry;, "Lcom/google/common/collect/MapMaker$SoftEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$SoftEntry;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    invoke-interface {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Internals;->removeEntry(Ljava/lang/Object;)Z

    .line 949
    return-void
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 971
    .local p0, "this":Lcom/google/common/collect/MapMaker$SoftEntry;, "Lcom/google/common/collect/MapMaker$SoftEntry<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/MapMaker$SoftEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 944
    .local p0, "this":Lcom/google/common/collect/MapMaker$SoftEntry;, "Lcom/google/common/collect/MapMaker$SoftEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$SoftEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 968
    .local p0, "this":Lcom/google/common/collect/MapMaker$SoftEntry;, "Lcom/google/common/collect/MapMaker$SoftEntry<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueReference()Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 958
    .local p0, "this":Lcom/google/common/collect/MapMaker$SoftEntry;, "Lcom/google/common/collect/MapMaker$SoftEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$SoftEntry;->valueReference:Lcom/google/common/collect/MapMaker$ValueReference;

    return-object v0
.end method

.method public setValueReference(Lcom/google/common/collect/MapMaker$ValueReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 962
    .local p0, "this":Lcom/google/common/collect/MapMaker$SoftEntry;, "Lcom/google/common/collect/MapMaker$SoftEntry<TK;TV;>;"
    .local p1, "valueReference":Lcom/google/common/collect/MapMaker$ValueReference;, "Lcom/google/common/collect/MapMaker$ValueReference<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$SoftEntry;->valueReference:Lcom/google/common/collect/MapMaker$ValueReference;

    .line 963
    return-void
.end method

.method public valueReclaimed()V
    .locals 2

    .prologue
    .line 965
    .local p0, "this":Lcom/google/common/collect/MapMaker$SoftEntry;, "Lcom/google/common/collect/MapMaker$SoftEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$SoftEntry;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Internals;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 966
    return-void
.end method
